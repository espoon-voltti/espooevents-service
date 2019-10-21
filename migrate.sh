#!/bin/bash

# Steps 1 and 2 must be run beforehand for the script to work.

# 1. Create local_settings.py from the template: cp local_settings.py.espooevents local_settings.py

# 2. Run: docker-compose up

# 3. Run migrations:
docker exec linkedevents-backend python manage.py migrate

# 4. Syncronize languages for translations in DB (answer 'Yes' to all prompt questions)
Yes | docker exec -i linkedevents-backend python manage.py sync_translation_fields

# 5. (Optionally) import general Finnish ontology (used by Helsinki UI and Helsinki events):
docker exec -i linkedevents-backend python manage.py event_import yso --all

# 6. (Optionally) add helsinki specific audiences and keywords:
# Add keyword set to display in the UI event audience selection
docker exec -i linkedevents-backend python manage.py add_helsinki_audience
# Add keyword set to display in the UI main category selection
docker exec -i linkedevents-backend python manage.py add_helfi_topics

# 7. (Optionally) import places and events for testing:
# Import places from Helsinki metropolitan region service registry (used by events from following sources)
docker exec -i linkedevents-backend python manage.py event_import tprek --places
# Import events from Helsinki metropolitan region libraries
docker exec -i linkedevents-backend python manage.py event_import helmet --events
# Import events from Espoo
docker exec -i linkedevents-backend python manage.py event_import espoo --events

# 8. (Optionally) import City of Helsinki internal organization for UI user rights management:
docker exec -i linkedevents-backend python manage.py import_organizations
https://api.hel.fi/paatos/v1/organization/ -s helsinki:ahjo

# 9. (Optionally) install API frontend templates:
docker exec -i linkedevents-backend python manage.py install_templates helevents

# Start your Django server:
docker exec -i linkedevents-backend python manage.py runserver 0:8000
