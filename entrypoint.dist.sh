#!/bin/bash
# This file is used by Dockerfile.dist

set -euo pipefail

# Require these env vars to be set
: "${ALLOWED_HOSTS:?}"
: "${CACHE_HOST:?}"
: "${CACHE_PASSWORD:?}"
: "${DB_APP_PASSWORD:?}"
: "${DB_APP_USER:?}"
: "${DB_HOST:?}"
: "${DB_MIGRATION_PASSWORD:?}"
: "${DB_MIGRATION_USER:?}"
: "${DB_NAME:?}"
: "${SECRET_KEY:?}"
: "${TOKEN_AUTH_ACCEPTED_AUDIENCE:?}"
: "${TOKEN_AUTH_SHARED_SECRET:?}"

CACHE_DB="${CACHE_DB:-"1"}"
# Use the same cache DB for the ongoing_local cache if the cache DB isn't explicitly defined
ONGOING_LOCAL_CACHE_DB="${ONGOING_LOCAL_CACHE_DB:-$CACHE_DB}"

# NOTE! We're using rediss (double s) as a scheme since that creates a TLS connection
CACHE_URL="rediss://:${CACHE_PASSWORD}@${CACHE_HOST}/${CACHE_DB}"
ONGOING_LOCAL_CACHE_URL="rediss://:${CACHE_PASSWORD}@${CACHE_HOST}/${ONGOING_LOCAL_CACHE_DB}"
APP_DATABASE_URL="postgis://${DB_APP_USER}:${DB_APP_PASSWORD}@${DB_HOST}/${DB_NAME}"
MIGRATION_DATABASE_URL="postgis://${DB_MIGRATION_USER}:${DB_MIGRATION_PASSWORD}@${DB_HOST}/${DB_NAME}"
unset CACHE_PASSWORD
unset DB_APP_PASSWORD
unset DB_APP_USER
unset DB_MIGRATION_PASSWORD
unset DB_MIGRATION_USER

# shellcheck disable=SC2155
EC2_HOST_IP="$(curl --silent --fail --show-error http://169.254.169.254/latest/meta-data/local-ipv4 || printf 'UNAVAILABLE')"

# If EC2_HOST IP is unavailable it could be that we are running inside Fargate and need to fetch it 
# via different way
if [ "$EC2_HOST_IP" = "UNAVAILABLE" ]; then
  JSON="$(curl --silent --fail --show-error "${ECS_CONTAINER_METADATA_URI}"/task || printf 'UNAVAILABLE')"
  HOST_IP="$(echo "$JSON" | jq -r '.Containers[0].Networks[0].IPv4Addresses[0]')"
  export HOST_IP
else
  HOST_IP=$EC2_HOST_IP
  export HOST_IP
fi

# Append host ip to ALLOWED_HOSTS so that ALB health checks can access the health endpoint
# shellcheck disable=SC2155
export ALLOWED_HOSTS="${ALLOWED_HOSTS},${HOST_IP}"

# if the first argument to `docker run` starts with `--`, the user is passing gunicorn arguments
if [[ $# -lt 1 ]] || [[ "$1" == "--"* ]]; then
  # Check Django configuration for issues
  ./manage.py check --deploy

  # Copy static files into settings.STATIC_ROOT
  ./manage.py collectstatic --noinput

  # Run migrations
  DATABASE_URL=$MIGRATION_DATABASE_URL ./manage.py migrate --noinput

  # Sync translation fields based on settings.LANGUAGES
  DATABASE_URL=$MIGRATION_DATABASE_URL ./manage.py sync_translation_fields --noinput
  unset MIGRATION_DATABASE_URL

  export CACHE_URL
  export ONGOING_LOCAL_CACHE_URL
  export DATABASE_URL=$APP_DATABASE_URL
  unset APP_DATABASE_URL

  # Run as exec so the application can receive any Unix signals sent to the container, e.g., Ctrl + C.
  # Bind to 0.0.0.0 (listen to all network interfaces) so that it's possible to access from the outside
  exec gunicorn linkedevents.wsgi --timeout 600 --workers=4 --bind 0.0.0.0:8000 "$@"
fi

# As argument doesn't start with --, assume user want to run his own process, for example a `bash`
# shell to explore this image
exec "$@"
