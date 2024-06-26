# Changelog

All notable changes to this project will be documented in this file. If possible, each change should also include a
short reasoning for why the change was introduced.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

<!-- List the changes in your PR under the Unreleased title. You can also copy this list to your PR summary. -->

## [1.12.0] - 2022-12-30

- Move from CirleCI to Github Actions
- Fix coordinate order breaking change in osoite import:
    - Uprade to python 3.7 and use buster image in importer workaround platform
      dependency issue
- Fix YSO importer to skip saami language
- Fix osoite importer with django-munigeo fork
- Add harrastushaku topics
- Add Erityisryhmät espoo audience
- Change handikappade -> funktionsnedsatta
- Upgrade dependencies (security issues), see `requirements.txt` in [1.12.0]

## [1.11.1] - 2022-08-11

### Added

- Return recently published events with the last_modified_since query

### Security

- Update container deps to latests when building

### Fixed

- Fix postgres container build
## [1.11.0] - 2022-05-05

### Added

- Timed publication of events.
  Use the `date_published` field to support timed publication. Events with
  `date_published` in the future are filtered out from event listings for
  unauthenticated users and users of other organizations than the
  publisher.

### Security

- Fix [CVE-2022-21699](https://github.com/advisories/GHSA-pq7m-3gw7-gq5x) by upgrading ipython from 7.16.1 to 7.16.3

### Fixed

- Fail the CI run if tests fail

## [1.10.21] - 2022-04-27

### Changed

- Remove Laajalahti from automatic 02600 tagging (ES-438)
- Update to latest Helsinki version
- Fix build and apply sensible dev practises

## [1.10.20] - 2021-10-27

### Changed

- Change importer base url ESPOO_BASE_URL to espoo.eu

## [1.10.19] - 2021-10-27

### Fixed

- Fix pipeline by changing builder_image_version and python_image_version.

## [1.10.18] - 2021-08-06

### Security

- Fix [CVE-2021-25288](https://github.com/advisories/GHSA-rwv7-3v45-hg29) by upgrading pillow from 8.1.1 to 8.2.0
- Fix [CVE-2021-28677](https://github.com/advisories/GHSA-q5hq-fp76-qmrc) by upgrading pillow from 8.1.1 to 8.2.0
- Fix [CVE-2021-28675](https://github.com/advisories/GHSA-g6rj-rv7j-xwp4) by upgrading pillow from 8.1.1 to 8.2.0
- Fix [CVE-2021-28676](https://github.com/advisories/GHSA-7r7m-5h27-29hp) by upgrading pillow from 8.1.1 to 8.2.0
- Fix [CVE-2021-25287](https://github.com/advisories/GHSA-77gc-v2xv-rvvh) by upgrading pillow from 8.1.1 to 8.2.0
- Fix [CVE-2021-28678](https://github.com/advisories/GHSA-hjfx-8p6c-g7gx) by upgrading pillow from 8.1.1 to 8.2.0
(automatic Dependabot upgrade)

## [1.10.17] - 2021-08-06

### Security

- Fix [CVE-2021-33203](https://github.com/advisories/GHSA-68w8-qjq3-2gfm) by upgrading django from 2.2.20 to 2.2.24
  (automatic Dependabot upgrade)
- Fix [CVE-2021-33571](https://github.com/advisories/GHSA-p99v-5w3c-jqq9) by upgrading django from 2.2.20 to 2.2.24
  (automatic Dependabot upgrade)
- Fix [CVE-2021-32052](https://github.com/advisories/GHSA-qm57-vhq3-3fwf) by upgrading django from 2.2.20 to 2.2.24
  (automatic Dependabot upgrade)
- Fix [CVE-2021-31542](https://github.com/advisories/GHSA-rxjp-mfm9-w4wr) by upgrading django from 2.2.20 to 2.2.24
  (automatic Dependabot upgrade)

## [1.10.16] - 2021-06-03

### Fixed

- Fix the YSO-importer from crashing when an invalid id is encountered while getting replacement for a deprecated id

## [1.10.15] - 2021-05-19

### Security

- Fix [GHSA-pghf-347x-c2gj](https://github.com/advisories/GHSA-pghf-347x-c2gj) by upgrading django-debug-toolbar from 3.1.1 to 3.2.1
  (automatic Dependabot upgrade)

## [1.10.14] - 2021-05-19

### Security

- Fix [GHSA-pghf-347x-c2gj](https://github.com/advisories/GHSA-pghf-347x-c2gj) by upgrading django-debug-toolbar from 3.1.1 to 3.2.1
  (automatic Dependabot upgrade)

## [1.10.13] - 2021-05-19

### Security

- Fix [CVE-2020-29651](https://github.com/advisories/GHSA-hj5v-574p-mj7c) by upgrading py from 1.9.0 to 1.10.0
  (automatic Dependabot upgrade)

## [1.10.12] - 2021-05-18

### Fixed

- Fix [CVE-2020-25658](https://github.com/advisories/GHSA-xrx6-fmxq-rjj2) by upgrading rsa from 4.6 to 4.7
(automatic Dependabot upgrade)

## [1.10.11] - 2021-03-30

### Fixed

- Fix [CVE-2021-27291](https://github.com/advisories/GHSA-pq64-v7f5-gqh8) by upgrading pygments from 2.7.2 to 2.7.4
(automatic Dependabot upgrade)

## [1.10.10] - 2021-03-29

### Fixed

- Fix [CVE-2021-28957](https://github.com/advisories/GHSA-jq4v-f5q6-mjqq), [CVE-2020-27783](https://github.com/advisories/GHSA-pgww-xf46-h92r) by upgrading lxml from 4.5.1 to 4.6.3
(automatic Dependabot upgrade)

## [1.10.9] - 2021-03-29

### Fixed

- Fix [CVE-2020-14343](https://github.com/advisories/GHSA-8q59-q68h-6hv4) by upgrading pyyaml from 5.3.1 to 5.4
(automatic Dependabot upgrade)

## [1.10.8] - 2021-03-29

### Fixed

- Fix [CVE-2020-28493](https://github.com/advisories/GHSA-g3rq-g295-4j3m) by upgrading jinja2 from 2.11.2 to 2.11.3
(automatic Dependabot upgrade)

## [1.10.7] - 2021-03-26

### Fixed

- Fix [CVE-2020-25626](https://github.com/advisories/GHSA-fx83-3ph3-9j2q) by upgrading djangorestframework from 3.11.0 to 3.11.2
(automatic Dependabot upgrade)

## [1.10.6] - 2021-03-26

### Fixed

- Fix [CVE-2020-24583](https://github.com/advisories/GHSA-m6gj-h9gm-gw44),
(automatic Dependabot upgrade)

## [1.10.5] - 2021-03-26

### Fixed

- Fix [CVE-2020-24583](https://github.com/advisories/GHSA-m6gj-h9gm-gw44),
[CVE-2020-24584](https://github.com/advisories/GHSA-fr28-569j-53c4) and
[CVE-2021-3281](https://github.com/advisories/GHSA-fvgf-6h6h-3322)
by upgrading django from 2.2.13 to 2.2.18(automatic Dependabot upgrade)

## [1.10.4] - 2021-03-26

### Fixed

- Fix [GHSA-vv2x-vrpj-qqpq](https://github.com/advisories/GHSA-vv2x-vrpj-qqpq) by upgrading bleach from 3.1.5 to 3.3.0
(automatic Dependabot upgrade)

## [1.10.3] - 2021-03-26

### Fixed

- Ingored `/venv` folder at gitignore to avoid trying to commit it's contents.


## [1.10.2] - 2021-03-26

### Fixed

- Fix CircleCI by changing builder_image_version.


## [1.10.1] - 2021-01-08

### Fixed

- Changed the `push-version-tag.sh` script so that it works although the tag to be pushed already exists. This way, the
  CircleCI workflow can be restarted without the `push-version-tag.sh` script failing.

## [1.10.0] - 2021-01-07

### Added

- A feature to the `add_espoo_places` management command for automatically adding Espoo place keywords to existing
  imported events based on the event location. This needs to be done in order for the imported events to have any Espoo
  place keywords and thus be visible in the new Espoo.fi site. The feature works in the following way:
  - If an imported event has a location in Espoo with a geographical postal code, the corresponding place keywords are
    automatically added for the event based on a hardcoded mapping of Espoo postal codes to place keywords.
  - If an imported event has a location in Espoo with a non-geographical postal code, the corresponding place keyword is
    automatically added based on a hardcoded mapping of location IDs to place keywords. Currently, only `Sellosali`
    has been mapped to a place keyword since it has a lot of events and has a postal code of `02070` which isn't tied to
    a specific geographical area.
  - If an imported event has a location with a postal code outside of Espoo, the place keyword `Other than Espoo` will
    be automatically added for the event.
- A feature to the `add_espoo_places` management command for automatically removing the Espoo place keyword
  `Online event` from such events that don't have the YSO keyword `Remote participation` anymore. The reason why a
  reimported event might not have the YSO keyword anymore is that the event might have changed from being a remote event
  to a non-remote event.
- A feature to the `add_espoo_audience` management command for automatically removing any Espoo audience keywords whose
  corresponding YSO keywords have been removed from a reimported event. This way, the Espoo audience keywords are kept
  in sync with the events' YSO audience keywords also for removed YSO audience keywords.

### Changed

- The `add_espoo_audience` management command to only update Espoo audience keywords for events that haven't been edited
  by a user since we don't want to accidentally overwrite any keywords modified by a user.
- The `add_espoo_places` management command to only add the Espoo place keyword `Online event` to remote events that
  haven't been edited by a user since we don't want to accidentally overwrite any keywords modified by a user.

## [1.9.2] - 2021-01-06

### Fixed

- The `helmet` importer (or any other importer for that matter) from removing Espoo audience keywords added by the
  `add_espoo_audience` management command and Espoo place keywords added by the `add_espoo_places` management command
  when reimporting and thus updating an existing event. This change fixes the issue by checking whether the event has
  any Espoo audiences or keywords and keeping them although the reimported event data doesn't have any Espoo audiences
  or keywords. This way, we don't accidentally overwrite any audiences and keywords for events that have been augmented
  by the `add_espoo_audience` and `add_espoo_places` management commands.

## [1.9.1] - 2020-12-30

This release syncs the pull request [City-of-Helsinki/linkedevents#440](https://github.com/City-of-Helsinki/linkedevents/pull/440)
from [linkedevents](https://github.com/City-of-Helsinki/linkedevents) to `espooevents-service`. The pull request is
synced separately since it's still unmerged in the upstream `linkedevents` repository but we already need the change in
`espooevents-service`.

### Added

- Instructions for submitting a pull request to the Helsinki Linked Events repository. This is useful, e.g., when we
  have more general changes that aren't Espoo-specific and which should therefore be included in the upstream
  `linkedevents` repository to prevent `linkedevents` and `espooevents-service` from diverging too much from each other.

### Fixed

- The automatic creation of the `Internet` location in the `helmet` importer. Currently, the `helmet` importer checks if
  an `Internet` location exists and creates one if it doesn't exist. This, however, currently fails since the
  `self.system_data_source` variable passed as an argument to the `Place` creation query contains a tuple and not a
  `DataSource` object resulting in the following error:

  ```
  ValueError: Cannot assign "(<DataSource: espooevents>, True)": "Place.data_source" must be a "DataSource" instance.
  ```

  This change fixes the bug by correctly assigning the `DataSource` object to the `self.system_data_source` variable so
  that the `Internet` location can be successfully created if it doesn't already exist.

## [1.9.0] - 2020-12-29

### Added

- A new `HELMET_CITY` environment variable and corresponding Django setting for controlling whether the `helmet`
  importer imports Helmet events located in all Helmet cities (i.e., Espoo, Helsinki, Kauniainen, and Vantaa) or just
  events located in Espoo. The default value of `HELMET_CITY` is `all` which tells the `helmet` importer to import
  events from all Helmet cities.
- Some documentation for the Helmet API queries to ease future maintanance and development

### Changed

- Grouped the Helmet libraries in the `helmet` importer `LOCATIONS` mapping by city so that it's easier to see whether
  the mapping is up-to-date and what libraries are missing (Helmet.fi also lists the libraries based on city).

  **KNOWN ISSUES:** The current `helmet` importer `LOCATIONS` mapping isn't up-to-date, e.g., some Espoo libraries are
  missing. To update the mapping, we'd need an up-to-date list of the libraries along with their Helmet Node IDs from
  the Helmet maintainer.
- The example `helmet` command in `Makefile` to only import events located in Espoo
- The `install_templates` command to be run in a Docker container. This was previously changed to be run on the host
  in version `1.8.1` since the previous command that executed the command in a Docker container didn't work. However,
  the command can easily be fixed to work in a Docker container by just mounting the source code directory to the
  container where the `install_templates` command is being run. This way, the installed templates are correctly
  installed to the correct host source code directory which is also visible to the container that runs
  `espooevents-service`.

## [1.8.1] - 2020-12-22

### Fixed

- The location mapping from Espoo's NetCommunity CMS Node IDs to Palvelukartta (tprek) location IDs in the `espoo`
  importer. It seems that the tprek IDs have changed for some of the existing places and the hardcoded mapping is thus
  out of date.

  For `espooevents-service` instances that have already imported the locations with the old IDs, the espoo importer
  doesn't fail since the old IDs defined in the mapping are found in the database. However, for new clean instances
  which don't have the locations with the old IDs, the `espoo` importer fails for the missing location IDs.

  To fix the issue, we replace the old tprek IDs in the location mapping with the corresponding new tprek IDs. These
  have been found by just looking up the new locations imported by the `tprek` importer in the database based on the
  place names.

  Note, also, that for `espooevents-service` instances that already have the locations with the old IDs, the old
  locations have been correctly marked as replaced by the newer locations.
- The incorrect `install_templates` example command in `Makefile`. The current `install_templates` example command
  doesn't actually work since it installs the templates in the admin Docker image and not the local development Docker
  image. To fix the issue, we change the command to be run directly on the host instead of in the admin Docker container
  so that the templates are installed in the host source code directory. Since the host source code directory is mounted
  in the development Docker container, running the `install_templates` command will now correctly install the templates
  for the local development environment.

## [1.8.0] - 2020-12-22

This release syncs the pull request [City-of-Helsinki/linkedevents#438](https://github.com/City-of-Helsinki/linkedevents/pull/438)
from [linkedevents](https://github.com/City-of-Helsinki/linkedevents) to `espooevents-service`. The pull request is
synced separately since it's still unmerged in the upstream `linkedevents` repository but we already need the change in
`espooevents-service`.

### Added

- Possibility to view and edit `Language` object translations in the Django admin so that the appropriate language names
  and translations can be displayed instead of language codes ([City-of-Helsinki/linkedevents#438](https://github.com/City-of-Helsinki/linkedevents/pull/438)).
  This is useful, e.g., when displaying the event languages in `espooevents-frontend`.
- Instructions for syncing a specific pull request from Helsinki's Linked Events repository to the Espoo Events
  repository. This can be useful, e.g., when wanting to sync an unmerged pull request needed by `espooevents-service`
  from the upstream repository.

### Fixed

- The `Language` rows not being clickable in the Django admin ([City-of-Helsinki/linkedevents#438](https://github.com/City-of-Helsinki/linkedevents/pull/438)).
  Currently, when no languages have been created and an importer is run, a set of languages are dynamically created
  based on `settings.LANGUAGES` and the languages supported by the importer. However, the current implementation sets
  only the `id` field for the new `Language` and not the `name` field which is shown in the Django admin list view.
  Thus, the created languages can't be clicked in the Django admin list view and the only way to get to the edit view is
  by a direct URL. This change fixes the issue by setting the `name` field for the created `Language` so that the
  language can be clicked in the Django admin.

## [1.7.0] - 2020-12-22

This release syncs the latest changes from [linkedevents](https://github.com/City-of-Helsinki/linkedevents)
([commits 76d10d2...70d3504](https://github.com/City-of-Helsinki/linkedevents/compare/76d10d2aae0cef430ea7cae77919cf5c8122c757...70d3504efd0b51a2fb617c72317c44eb4febee02))
to `espooevents-service`.

### Added

- The [django-debug-toolbar](https://github.com/jazzband/django-debug-toolbar) to display various types of debug
  information in local development ([City-of-Helsinki/linkedevents#435](https://github.com/City-of-Helsinki/linkedevents/pull/435))
  - **NOTE!** Fixed a bug with the `django-debug-toolbar` change that caused the dependency to be mandatory also in the
    production environment.
- `combined_local_ongoing` filter for events for filtering local events based on `settings.MUNIGEO_MUNI` that are
  currently ongoing or are upcoming ([City-of-Helsinki/linkedevents#436](https://github.com/City-of-Helsinki/linkedevents/pull/436))
  - **NOTE!** The changes related to the new `ongoing_local` cache have been customized for Espoo Events. Also,
    [python-memcached](https://github.com/linsomniac/python-memcached) has been dropped since `espooevents-service`
    already has [django-redis](https://github.com/jazzband/django-redis) configured.
- `populate_local_event_cache` management command that should be run hourly to update the `combined_local_ongoing` cache
  used by the `combined_local_ongoing` filter ([City-of-Helsinki/linkedevents#436](https://github.com/City-of-Helsinki/linkedevents/pull/436))
- `ONGOING_LOCAL_CACHE_URL` environment variable setting for specifying the `ongoing_local` cache URL for the Django app
- The following new environment variables for the local and distribution Docker images:
  - `CACHE_DB` for configuring the Django `default` cache DB. The default value is `1` if `CACHE_DB` hasn't been
    specified.
  - `ONGOING_LOCAL_CACHE_DB` for configuring the Django `ongoing_local` cache DB. The default value is the value of
    `CACHE_DB` if `ONGOING_LOCAL_CACHE_DB` hasn't been specified.
- The following new environment variable for the admin Docker image:
  - `CACHE_HOST` for specifying the Redis host
  - `CACHE_PASSWORD_SSM_KEY` for specifying the SSM key for the cache password. This is used for fetching the password
    for the `ongoing_local` cache from AWS SSM in the Docker entrypoint script. This is currently only needed for
    running the `populate_local_event_cache` management command. Alternatively, the `CACHE_PASSWORD` environment
    variable can also be passed but this shouldn't be used for AWS Batch jobs since the password would be visible, e.g.,
    in AWS Console.
  - `CACHE_TLS` for specifying whether a TLS connection should be used for the Redis connection. This is needed since
    the admin Docker image is used in both the local and non-local environments but the local Redis container doesn't
    have TLS configured whereas the non-local environments have TLS configured.
  - `ONGOING_LOCAL_CACHE_DB` for configuring the Django `ongoing_local` cache DB. The default value is `1` if
    `ONGOING_LOCAL_CACHE_DB` hasn't been specified.
- Example command to `Makefile` for running the `populate_local_event_cache` management command locally
- A note in `README` about being careful when rebasing changes synced from the upstream `linkedevents` repository

### Changed

- The hardcoded value of the `MUNIGEO_MUNI` setting from `kunta:helsinki` to `kunta:espoo`. The value is used by the new
  `populate_local_event_cache` management command to search for local upcoming events. Since we want to search for local
  events in Espoo, the value needs to be `kunta:espoo`.

### Fixed

- An issue with image uploading ([City-of-Helsinki/linkedevents#435](https://github.com/City-of-Helsinki/linkedevents/pull/435))
- The `has_upcoming_events` field to also take into account the ongoing events ([City-of-Helsinki/linkedevents#435](https://github.com/City-of-Helsinki/linkedevents/pull/435))

## [1.6.1] - 2020-12-15

### Changed

- The IDs of some of the place keywords in the `espoo:places` keyword set since we've added the missing place keyword
  `Vanha-Nuuksio` in between the other place keywords. Since the `espoo:places` keyword set hasn't been taken into use
  yet in Espoo Events, we can safely change the IDs of the place keywords to follow the original order in the
  specification. This is done just as a cosmetic change and it doesn't have any other practical reasons.

  **NOTE!** If you've already added the `espoo:places` keyword set, you need to remove it and run the
  `add_espoo_places` management command again to add the place keywords with their new IDs. For instance, the ID of the
  `Online event` place keyword has changed from `espoo:p62` to `espoo:p63` so you also need to remove any references to
  it. You can run the following SQL statements to delete any existing Espoo place keywords from the database:

  ```
  DELETE FROM events_event_keywords WHERE keyword_id ILIKE 'espoo:p%';
  DELETE FROM events_keywordset_keywords WHERE keywordset_id = 'espoo:places';
  DELETE FROM events_keywordset WHERE id = 'espoo:places';
  DELETE FROM events_keyword WHERE id ILIKE 'espoo:p%';
  ```

### Fixed

- The `espoo:places` keyword set by adding the missing place keyword `Vanha-Nuuksio`

## [1.6.0] - 2020-12-15

### Added

- A new Django management command `add_espoo_places` for adding a new keyword set `espoo:places` with Espoo's place
  keywords. The keywords in the keyword set are based on Espoo's neighborhoods (Finnish: kaupunginosat).

  Another option would've been to instead of keywords add the neighborhoods in the place hierarchy similarly as the
  `python manage.py geo_import helsinki --divisions` command does for, e.g., Helsinki's neighborhoods. However, this
  would've required that the Espoo place hierarchy is defined or can be fetched from somewhere and that a new
  [django-munigeo](https://github.com/City-of-Helsinki/django-munigeo/tree/master/munigeo/importer) importer would've
  been implemented for Espoo. This could of course still be implemented in the future if it's deemed necessary.

  For now, the Espoo places are added using the keywords-based implementation since it was considered simpler to
  implement and more flexible from the event management perspective. A downside is that there isn't a strong link
  between the event places and the event place keywords. Thus, it's possible that the place keyword of an event isn't
  correct in relation to the event place which can occur, e.g., because of a human error. A keywords-based
  implementation is, on the other hand, more flexible since it allows to tag an event with multiple place keywords.
  Also, not all events might have an explicit and unambiguous place or the event place information might be incomplete
  whereby a keywords-based place implementation might be more suitable than the place hierarcy based implementation.

  The management command also automatically adds the "Online event" (`espoo:p62`) place keyword to any events that have
  the YSO "remote participation" (`yso:p26626`) keyword. This is mostly relevant for events added to Espoo Events by the
  importers. Instead of implementing the mapping directly in the importers, the mapping is now done in this management
  command in order to better isolate the change and thus minimize changes to existing functionality. This in turn helps
  to keep the repository compatible with the upstream `linkedevents` repository. Since the mapping needs to be done to
  newly imported events, it's recommended to run this management command hourly since some of the importers should also
  be run hourly.
- Example command to `Makefile` for running the `add_espoo_places` management command locally

## [1.5.0] - 2020-12-10

### Added

- A new Django management command `add_espoo_topics` for adding a new keyword set `espoo:topics` with Espoo's topic
  keywords. All of the keywords in the keyword set are based on existing YSO keywords. Since the `add_espoo_topics`
  command only adds a new keyword set and adds existing YSO keywords to the set, there's no need to run the management
  command based on a regular schedule. In other words, it's sufficient to run the management command manually only when
  the keyword set or its keywords change.

### Changed

- Replaced the `add_helsinki_topics` example command in `Makefile` with the new `add_espoo_topics` command

### Fixed

- A couple of small typos in the log messages of the `add_espoo_audience` management command

## [1.4.0] - 2020-12-09

### Changed

- Replaced all of the YSO keywords added by the `add_espoo_audience` management command with custom Espoo audience
  keywords so that the Finnish audience terms and their translations correspond to the terms and translations in
  Espoo.fi. The terms used in Espoo.fi differ from the corresponding YSO keywords which makes the YSO keywords
  unsuitable for Espoo.

  **NOTE!** If you've already added the `espoo:audiences` keyword set, you need to remove it and run the
  `add_espoo_audience` management command again to add the correct audience keywords. For instance, the ID of the
  `seniorit` keyword has changed from `espoo:a1` to `espoo:a4` so you also need to remove any references to it. You can
  run the following SQL statements to delete any existing Espoo audience keywords from the database:

  ```
  DELETE FROM events_event_keywords WHERE keyword_id ILIKE 'espoo:a%';
  DELETE FROM events_keywordset_keywords WHERE keywordset_id = 'espoo:audiences';
  DELETE FROM events_keywordset WHERE id = 'espoo:audiences';
  DELETE FROM events_keyword WHERE id ILIKE 'espoo:a%';
  ```
- The `add_espoo_audience` management command to use Python 3's [f-strings](https://docs.python.org/3/tutorial/inputoutput.html#formatted-string-literals)
  for formatting strings instead of the older `format()` function since `f-strings` make the template strings more
  readable

### Fixed

- Added the missing YSO audience keyword `p2433` to the `KEYWORDS_TO_ADD_TO_AUDIENCE` dictionary in the `yso` importer.
  The `p2433` keyword corresponds to one of the custom Espoo audience keywords and should therefore be added to the
  audience list. This fixes the issue where other importers using the `KEYWORDS_TO_ADD_TO_AUDIENCE` dict didn't add the
  `p2433` keyword to the audience list when encountering the keyword.
- The English translation of the custom `seniorit` Espoo audience keyword from `senior citizens` to `elderly` which is
  the correct translation that Espoo uses

## [1.3.0] - 2020-12-08

### Added

- A new Django management command `add_espoo_audience` for adding a new keyword set `espoo:audiences` with Espoo's
  target audience keywords. The management command also adds a new custom Espoo audience keyword `espoo:a1` (seniorit)
  to all events that have the `yso:p2433` (ikääntyneet) YSO keyword. The custom Espoo audience keyword has been added
  because Espoo wants to use the term `seniorit` instead of the term `ikääntyneet` since `seniorit` is the established
  term that Espoo is using in Espoo.fi. Instead of renaming the YSO keyword or implementing the mapping directly in the
  importers, the mapping is now done in this management command in order to better isolate the change and thus minimize
  changes to existing functionality for keeping the repository compatible with the upstream `linkedevents` repository.
  Since the mapping needs to be done to newly imported events, it's recommended to run this management command hourly
  since some of the importers should also be run hourly.

### Changed

- The `yso` importer's `KEYWORDS_TO_ADD_TO_AUDIENCE` list to only include the YSO keywords that the `espoo:audiences`
  keyword set contains so that only the audience keywords that are relevant to Espoo are added to an event's audience
  list in event imports. Note that this doesn't affect just the `yso` importer since other importers use the
  `KEYWORDS_TO_ADD_TO_AUDIENCE` list although it's defined in the `yso` importer.
- Replaced the `add_helsinki_audience` example command in `Makefile` with the new `add_espoo_audience` command

## [1.2.1] - 2020-12-08

### Fixed

- The dependency resolution issue on the CI caused by incompatible versions of the `click` dependency. Currently,
  `click` is locked to version `7.1.2` in `requirements-dev.txt` but `gitlint` version `0.12.0` requires version `7.0`
  of `click`. However, `gitlint` version `0.15.0` requires version `7.1.2` of `click` which is the same as the locked
  version in `requirements-dev.txt`. So, upgrading `gitlint` fixes the dependency resolution error.

## [1.2.0] - 2020-12-03

### Added

- Versioning for `espooevents-service` based on [Semantic Versioning](https://semver.org) so that it's easier to
  understand what type of changes each release contain and to better communicate breaking changes
- Instructions for versioning and a rationale for why versioning is useful
- Scripts for validating the version number and pushing the version tag to GitHub
- CircleCI configuration for automatically pushing the version tag to GitHub when a change has been merged to `master`
- A changelog to better document what's changed and why so that future development and maintenance would hopefully be
  a bit easier
- Changelog entries to all previous releases to better document the changes and their rationale for future developers
- Checklist item to the GitHub pull request template for ensuring that the changelog has been updated and the version
  number incremented for each release

## [1.1.1] - 2020-11-18

### Fixed

- The `lint` task in `Makefile` by adding the missing environment variable which is required by the Docker entrypoint
  script although it isn't actually required by the `lint` command
- The importer tasks in `Makefile` by adding the missing environment variable for specifying the data source. It's
  better to set it explicitly since some of the importers use the `SYSTEM_DATA_SOURCE_ID` setting and if it isn't set,
  the application uses the default value of `system` which isn't very descriptive.

## [1.1.0] - 2020-11-16

This release syncs the latest changes from [linkedevents](https://github.com/City-of-Helsinki/linkedevents)
([commits ead9059...76d10d2](https://github.com/City-of-Helsinki/linkedevents/compare/ead90596e421a6c996fcc88c47b17e8011ce5013...76d10d2aae0cef430ea7cae77919cf5c8122c757))
to `espooevents-service`.

### Added

- [uWSGI](https://github.com/unbit/uwsgi) configuration for running the app with `uwsgi` in a Docker container ([City-of-Helsinki/linkedevents#412](https://github.com/City-of-Helsinki/linkedevents/pull/412))
  - **NOTE!** The changes related to `uwsgi` have been dropped from Espoo Events since Espoo Events uses `gunicorn` to
    run the app. However, the other minor changes in this PR have been kept.
- `audience_min_age_lt`, `audience_min_age_gt`, `audience_max_age_lt`, and `audience_max_age_gt` filters to the API ([City-of-Helsinki/linkedevents#419](https://github.com/City-of-Helsinki/linkedevents/pull/419))
- [WhiteNoise](https://github.com/evansd/whitenoise) configuration for letting Django serve its own static files ([City-of-Helsinki/linkedevents#413](https://github.com/City-of-Helsinki/linkedevents/pull/413))
  - **NOTE!** The changes related to `WhiteNoise` have been dropped from Espoo Events since Espoo Events doesn't use
    Django to serve any static files. The other minor changes in this PR have been kept.
- A new `funactionnuorille` importer for importing courses to Linked Courses from `funactionnuorille.fi` ([City-of-Helsinki/linkedevents#421](https://github.com/City-of-Helsinki/linkedevents/pull/421))
- `starts_after`, `starts_before`, `ends_after`, and `ends_before` filters to the API ([City-of-Helsinki/linkedevents#422](https://github.com/City-of-Helsinki/linkedevents/pull/422))
- `has_upcoming_events` filter for keywords for filtering only such keywords that have upcoming events and a
  corresponding management command `update_has_upcoming_events` that should be run hourly to update the
  `has_upcoming_events` field for keywords ([City-of-Helsinki/linkedevents#423](https://github.com/City-of-Helsinki/linkedevents/pull/423))
- `has_upcoming_events` filter for places for filtering only such places that have upcoming events and a corresponding
  management command `update_has_upcoming_events` that should be run hourly to update the
  `has_upcoming_events` field for places ([City-of-Helsinki/linkedevents#424](https://github.com/City-of-Helsinki/linkedevents/pull/424))
- `free_text` filter for similarity based search of keywords ([City-of-Helsinki/linkedevents#425](https://github.com/City-of-Helsinki/linkedevents/pull/425))
- `combined_text` filter to search for event content and keywords ([City-of-Helsinki/linkedevents#426](https://github.com/City-of-Helsinki/linkedevents/pull/426))
- Support for the `combined_text` filter for searching for events that must contain multiple search terms by using a
  comma to separate the search terms ([City-of-Helsinki/linkedevents#428](https://github.com/City-of-Helsinki/linkedevents/pull/428))
- Settings to data sources in the Django admin site for specifying whether the creation and editing of past events is
  allowed ([City-of-Helsinki/linkedevents#233](https://github.com/City-of-Helsinki/linkedevents/pull/233))
- Support for creating, updating, and removing keywords and places using the API ([City-of-Helsinki/linkedevents#236](https://github.com/City-of-Helsinki/linkedevents/pull/236))
- Support for creating registration links in the `harrastushaku` course importer for Linked Courses ([City-of-Helsinki/linkedevents#430](https://github.com/City-of-Helsinki/linkedevents/pull/430))
- A new importer for Mikkeli Nyt events ([City-of-Helsinki/linkedevents#431](https://github.com/City-of-Helsinki/linkedevents/pull/431))
- Instructions for syncing the Espoo Events repository with Helsinki's Linked Events repository
- Example command to `Makefile` for running the `update_has_upcoming_events` management command locally

### Changed

- The `lippupiste` importer to import all events instead of just 50 events ([City-of-Helsinki/linkedevents@9b1b1e9](https://github.com/City-of-Helsinki/linkedevents/commit/9b1b1e9b3a5b82372030ec81ef4e29697678f697))
- The base importer to reinstate deleted events at import event if the user has deleted them ([City-of-Helsinki/linkedevents@01d030d](https://github.com/City-of-Helsinki/linkedevents/commit/01d030dc77507b4aef5f256f33a805b20778827a))
- The API permission checks to give the API key user access to suborganization events ([City-of-Helsinki/linkedevents@dacb7df](https://github.com/City-of-Helsinki/linkedevents/commit/dacb7df0e39f115c8931d01acb0785402b9b1969))
- The `helmet` importer to automatically create the system data source if it's missing ([City-of-Helsinki/linkedevents@63d2a27](https://github.com/City-of-Helsinki/linkedevents/commit/63d2a274805488521695125f651abc012a639173))
- The `kulke` importer to automatically create the "Internet" location if it's missing ([City-of-Helsinki/linkedevents@9be8357](https://github.com/City-of-Helsinki/linkedevents/commit/9be8357e05a988224a0cebfc544408c754740df0))
- The API to allow sorting events by duration in reverse order, i.e., `-duration` ([City-of-Helsinki/linkedevents@1cea3ea](https://github.com/City-of-Helsinki/linkedevents/commit/1cea3eaf8e706b7219eb256cd34c564d8db662f4))
- Upgraded production requirements to latest versions ([City-of-Helsinki/linkedevents@8808f6c](https://github.com/City-of-Helsinki/linkedevents/commit/8808f6c52e3cbc2c41ff34b8d568e560f61d3040)),
- Upgraded development requirements to latest versions ([City-of-Helsinki/linkedevents@4fa0d25](https://github.com/City-of-Helsinki/linkedevents/commit/4fa0d254a2ba837af33b3dc35d850f95ba1c65e6)),
- The `flake8` configuration to ignore error `E741`, i.e., ambiguous variable name error ([City-of-Helsinki/linkedevents@b141c85](https://github.com/City-of-Helsinki/linkedevents/commit/b141c853a25587ba5770acced26f2137c762d5c8))
- The `helmet` importer to allow canceling Helmet events ([City-of-Helsinki/linkedevents@8f45ab0](https://github.com/City-of-Helsinki/linkedevents/commit/8f45ab07166f3289d82f81f1437a554e948debe2))

### Deprecated

- The `audience_min_age` and `audience_max_age` filters in the API which should be replaced with the new `_lt` and `_gt`
  filters introduced above ([City-of-Helsinki/linkedevents#419](https://github.com/City-of-Helsinki/linkedevents/pull/419))

### Fixed

- The app from crashing in the local development environment by using the
  `django.core.mail.backends.console.EmailBackend` email backend when `Mailgun` hasn't been configured ([City-of-Helsinki/linkedevents#411](https://github.com/City-of-Helsinki/linkedevents/pull/411))
- The base importer to prevent overwriting user edited fields with older data from importer ([City-of-Helsinki/linkedevents@9d177ce](https://github.com/City-of-Helsinki/linkedevents/commit/9d177ce5771b43d3021c49950cc561db34ceaf42))
- The base importer to prevent importers from changing images in user edited events ([City-of-Helsinki/linkedevents@ed45a96](https://github.com/City-of-Helsinki/linkedevents/commit/ed45a9622803b36fc973c20434685c4119233f32))
- The `lippupiste` importer to not empty the super event name when encountering user edited names ([City-of-Helsinki/linkedevents@9120176](https://github.com/City-of-Helsinki/linkedevents/commit/9120176e1da66bdb122c63bf5959e59607e23670))
- The `PostgreSQL` volume path in the Docker Compose configuration ([City-of-Helsinki/linkedevents#416](https://github.com/City-of-Helsinki/linkedevents/pull/416))
- A `flake8` issue in `helevents/tests/conftest.py` ([City-of-Helsinki/linkedevents@6c8351e](https://github.com/City-of-Helsinki/linkedevents/commit/6c8351ec84f4608a3d13410b6f5416b0df69b3d3))
- The external link creation in the base importer ([City-of-Helsinki/linkedevents#429](https://github.com/City-of-Helsinki/linkedevents/pull/429))
- The Docker image build error by installing `build-essential` which is needed because `python-Levenshtein` seems to
  require `gcc`
- The app not starting by changing the database initialization script to install the `pg_trgm` extension which is
  required by one of the Linked Events changes. The `pg_trgm` extension can't be installed using an application database
  migration since we haven't granted the migration user rights to create extensions.
  - **NOTE!** Since the init script is only run once when setting up the database, we need to install the extension
    manually for any databases that have already been initialized
- A `flake8` trailing whitespace issue in `linkedevents/settings.py`

## [1.0.0] - 2020-05-13

This marks the `1.0.0` release which defines the public API of `espooevents-service`. This also means that the public
API should be stable and the way in which the version is incremented after this release is dependent upon how the public
API changes.

This release syncs the latest changes from [linkedevents](https://github.com/City-of-Helsinki/linkedevents)
([commits 5c7b4cd...ead9059](https://github.com/City-of-Helsinki/linkedevents/compare/5c7b4cd7758d21056dc623165dd518455235ff76...ead90596e421a6c996fcc88c47b17e8011ce5013))
to `espooevents-service`.

### Changed

- Fine-tuned the visibility of short and long kulke events ([City-of-Helsinki/linkedevents@7a367a5](https://github.com/City-of-Helsinki/linkedevents/commit/7a367a577e42c023095f525d5000e7694e514fae))
- The `kulke` importer to map events with the "Etätapahtumat" keyword automatically to the Internet location ([City-of-Helsinki/linkedevents@483d94e](https://github.com/City-of-Helsinki/linkedevents/commit/483d94e531d39c198eada7850c8695d507faef7c))
- The API to allow an invalid ID in the organization `child` and `parent` filters ([City-of-Helsinki/linkedevents@0bc2d37](https://github.com/City-of-Helsinki/linkedevents/commit/0bc2d3736d38572e11b80a0f41af83860038771e))
- The event API text search filter to also search for events based on place fields ([City-of-Helsinki/linkedevents#410](https://github.com/City-of-Helsinki/linkedevents/pull/410))

## [0.20.0] - 2020-05-05

### Added

- The remote participation keyword, i.e., "Etäosallistuminen" to the `helsinki:topics` keyword set since this keyword is
  automatically added to an event when the event location is set to `Internet` in `espooevents-frontend`

## [0.19.0] - 2020-04-20

This release syncs the latest changes from [linkedevents](https://github.com/City-of-Helsinki/linkedevents)
([commits 3e3d9a9...5c7b4cd](https://github.com/City-of-Helsinki/linkedevents/compare/3e3d9a958e966578e51143a0df699e5964e9fe26...5c7b4cd7758d21056dc623165dd518455235ff76))
to `espooevents-service`.

### Added

- Tests for all `start` and `end` filter use cases ([City-of-Helsinki/linkedevents#400](https://github.com/City-of-Helsinki/linkedevents/pull/400),
  [City-of-Helsinki/linkedevents#396](https://github.com/City-of-Helsinki/linkedevents/issues/396))
- A `deleted` filter to the API to only filter events that have been deleted ([City-of-Helsinki/linkedevents@5ee3c5c](https://github.com/City-of-Helsinki/linkedevents/commit/5ee3c5c1aece9bc5ff3b2c2f92cd207e3459657c))
- A description about the `helsinki:audience` and `helsinki:topics` keyword sets to the keyword page in the browsable
  API ([City-of-Helsinki/linkedevents#403](https://github.com/City-of-Helsinki/linkedevents/pull/403))
- An own documentation page for the keyword set endpoint in the browsable API ([City-of-Helsinki/linkedevents@ea09f37](https://github.com/City-of-Helsinki/linkedevents/commit/ea09f37bbaf4fc23694b81db35ddc91d94de1430))
- An `is_free` filter to the API to only filter events that are free ([City-of-Helsinki/linkedevents#406](https://github.com/City-of-Helsinki/linkedevents/pull/406),
  [City-of-Helsinki/linkedevents#402](https://github.com/City-of-Helsinki/linkedevents/issues/402))
- API documentation about the new filter options ([City-of-Helsinki/linkedevents@deba472](https://github.com/City-of-Helsinki/linkedevents/commit/deba472454abfd96c72483fe4d40ad2b84340662),
  [City-of-Helsinki/linkedevents@f8c9c6d](https://github.com/City-of-Helsinki/linkedevents/commit/f8c9c6df5c48804bd70d3adc3ab385b6e1602328))
- An `event_status` filter to the API to filter events based on their status ([City-of-Helsinki/linkedevents@521d5ab](https://github.com/City-of-Helsinki/linkedevents/commit/521d5abeed8509625aa11dc4a9633faea8537c46),
  [City-of-Helsinki/linkedevents@d8205d2](https://github.com/City-of-Helsinki/linkedevents/commit/d8205d2cfbabf9a886d6c8db211181b5927e49ef))

### Changed

- The `helmet` importer to map events with the "Etätapahtumat" keyword automatically to the Internet location ([City-of-Helsinki/linkedevents@23bac52](https://github.com/City-of-Helsinki/linkedevents/commit/23bac524e6e5006f54dcd85aa11411b4cd1160d4),
  [City-of-Helsinki/linkedevents@7e19cf5](https://github.com/City-of-Helsinki/linkedevents/commit/7e19cf502521af69fa09e711501c7af5c441cb40))
- To allow postponing of incomplete events, e.g., external events that have missing data ([City-of-Helsinki/linkedevents@ad956b7](https://github.com/City-of-Helsinki/linkedevents/commit/ad956b796956881d653be9c9c520eb66ea891a27))
- To return postponed events when looking for future events without end date ([City-of-Helsinki/linkedevents@6fc6d51](https://github.com/City-of-Helsinki/linkedevents/commit/6fc6d516f88f37ad183f428fdaf3238dc0a80f3e))
- Updated the documentation in the browsable API related to keywords and keyword sets ([City-of-Helsinki/linkedevents@527274f](https://github.com/City-of-Helsinki/linkedevents/commit/527274f08efbda0aeffa94337f194950f154e476))
- Updated the documentation in the browsable API related to the contents of the API ([City-of-Helsinki/linkedevents#404](https://github.com/City-of-Helsinki/linkedevents/pull/404))
- The `is_free` filter to also allow for uppercase `is_free` values ([City-of-Helsinki/linkedevents@989d918](https://github.com/City-of-Helsinki/linkedevents/commit/989d9189228873e1a968546b97ef178be23e7311),
  [City-of-Helsinki/linkedevents@c7d76cf](https://github.com/City-of-Helsinki/linkedevents/commit/c7d76cfe50efb7c06cf9965c3f3ffd202117ab2b))
- The base importer to change the status to rescheduled for all events whose start time has changed ([City-of-Helsinki/linkedevents@493515d](https://github.com/City-of-Helsinki/linkedevents/commit/493515db4dfb9c7d442ccfb87b0ff53f671ea69b))
- Updated the `README` regarding the API data contents of Linked Events ([City-of-Helsinki/linkedevents#409](https://github.com/City-of-Helsinki/linkedevents/pull/409))

### Fixed

- The API to not return deleted subevents in the `sub_events` fields of events since that causes the UI to be unable to
  edit events with deleted subevents ([City-of-Helsinki/linkedevents#407](https://github.com/City-of-Helsinki/linkedevents/pull/407),
  [City-of-Helsinki/linkedevents#390](https://github.com/City-of-Helsinki/linkedevents/issues/390))
- The `lippupiste` importer to not create a super event - subevent structure for all events even if the event in
  question only has a single occurence ([City-of-Helsinki/linkedevents#408](https://github.com/City-of-Helsinki/linkedevents/pull/408),
  [City-of-Helsinki/linkedevents#393](https://github.com/City-of-Helsinki/linkedevents/issues/393))

### Security

- Upgraded the insecure version of [bleach](https://github.com/mozilla/bleach) to version `3.1.4` ([City-of-Helsinki/linkedevents#401](https://github.com/City-of-Helsinki/linkedevents/pull/401))

## [0.18.0] - 2020-04-07

### Changed

- **BREAKING:** The Git hook installation script to create symlinks to the Git hook files instead of copying them. This
  way, the hook files don't have to be copied again if any of the hook files change. For this to take effect, it
  requires that the currently installed Git hooks are removed from the `.git/hooks` directory and that the Git hook
  installation script is rerun.

### Fixed

- The issue with `truffleHog`'s `--since_commit` option (see https://github.com/dxa4481/truffleHog/issues/108) by
  instead searching for secrets only in the current feature branch's commits by using the `--branch` and `--max_depth`
  options

## [0.17.0] - 2020-03-30

### Added

- Example commands to `Makefile` for running the `update_n_events` management command for keywords and places locally

## [0.16.0] - 2020-03-27

### Added

- Example commands to `Makefile` for building the development Docker image and for running tests locally

### Changed

- The layer order in the distribution Docker image for better cache reuse. For instance, the build and commit args
  passed to the Docker image change frequently causing the Docker layer cache to be invalidated and all later layers to
  be rebuilt. Thus, it's better to move the build and commit args as down as possible in the Dockerfile. By optimizing
  cache reuse by better layer ordering, we can, e.g., speed up the CI workflows and save storage space.
- Removed all files that aren't copied to the distribution Docker image from the `.dockerignore` whitelist since these
  files are unnecessary
- Refactored the development Docker image so that it can be used for running linting and tests on the CI instead of
  using the CircleCI Python image. This way we can utilize CircleCI's Docker Layer Caching feature and speed up the CI
  workflows.
- The `lint` example command in `Makefile` to work with the development Docker image
- The CircleCI configuration and scripts to run tests on CircleCI with the development Docker image. This way we can
  speed up the workflow by using CircleCI's Docker Layer Caching feature.
- The distribution Docker image to define the Docker labels only once since CircleCI's Docker daemon doesn't support
  `BuildKit` whereby there's no way to skip stages in multi-stage builds. Therefore, when building the admin image, it
  also builds the dist image. This in turn caused the label statements to be run twice.

## [0.15.1] - 2020-03-27

### Fixed

- Two tests that failed due to datetime calculations that differ from the actual implementation. The calculations in the
  tests don't take daylight saving time correctly into account. This fixes the issue by calculating the expected
  `end_time` in the tests in the same way as the implementation calculates the automatic `end_time`.

## [0.15.0] - 2020-03-27

This release syncs the latest changes from [linkedevents](https://github.com/City-of-Helsinki/linkedevents)
([commits ef70f3f...3e3d9a9](https://github.com/City-of-Helsinki/linkedevents/compare/ef70f3f332557a8e27316754ed9fdb11d960dd0f...3e3d9a958e966578e51143a0df699e5964e9fe26))
to `espooevents-service`.

### Added

- `created_by`, `publisher`, `location`, and `end_time` filters to the event listing page in the Django admin site ([City-of-Helsinki/linkedevents@6c2193b](https://github.com/City-of-Helsinki/linkedevents/commit/6c2193b8e3b75a1acca2eee91011a3e4b8f2f58b))
- The `deleted` field to the event object returned by the API ([City-of-Helsinki/linkedevents@5f9c69a](https://github.com/City-of-Helsinki/linkedevents/commit/5f9c69a534550dcb4d6d4df7a949a2f84da128df))

### Changed

- Improved date handling by checking for naive UTC datetimes just in case somebody uses them ([City-of-Helsinki/linkedevents@534508a](https://github.com/City-of-Helsinki/linkedevents/commit/534508ae397ddeac9c501a61f1b39ccf180d436d))
- To allow canceling of incomplete events, e.g., external events that have missing data ([City-of-Helsinki/linkedevents@bd3f709](https://github.com/City-of-Helsinki/linkedevents/commit/bd3f70902e2b348ea3c786620811dd3e0d6ae0a9))
- Upgraded [Django](https://github.com/django/django) to version `2.2.11` ([City-of-Helsinki/linkedevents@b72780a](https://github.com/City-of-Helsinki/linkedevents/commit/b72780a51a167f799275d794e06ea66e4d4520e2))

### Fixed

- Bug preventing bulk editing of events from other data sources ([City-of-Helsinki/linkedevents@4e8df37](https://github.com/City-of-Helsinki/linkedevents/commit/4e8df3732cfc5e5f62c6a14727a78d16f96c191f),
  [City-of-Helsinki/linkedevents@8607ee5](https://github.com/City-of-Helsinki/linkedevents/commit/8607ee5d327e593addcc19a6f0d63d77436f2a99),
  [City-of-Helsinki/linkedevents@71f55dc](https://github.com/City-of-Helsinki/linkedevents/commit/71f55dc3b056408c2726c60b37011569449a246d))

### Security

- Upgraded the insecure version of [bleach](https://github.com/mozilla/bleach) to version `3.1.1` ([City-of-Helsinki/linkedevents#392](https://github.com/City-of-Helsinki/linkedevents/pull/392))
- Upgraded the insecure version of [bleach](https://github.com/mozilla/bleach) to version `3.1.2` ([City-of-Helsinki/linkedevents#399](https://github.com/City-of-Helsinki/linkedevents/pull/399))

## [0.14.1] - 2020-03-26

### Fixed

- The CircleCI Jira orb rate limit issues with downloading `jq` by caching `jq` so that it doesn't have to be
  downloaded again in each CircleCI job

## [0.14.0] - 2020-03-19

### Changed

- Upgraded the `builder-aws` Docker image used by CircleCI to the latest version which has Terraform `0.12.23`
  installed. This needs to be done in order for the deployments to continue working since `espooevents-infra`
  was upgraded to use Terraform `0.12` and the deployments would fail if trying to run them with Terraform `0.11`.

## [0.13.1] - 2020-03-12

### Fixed

- The app throwing an exception when the `Mailgun` settings haven't been configured by accepting a new environment
  variable `ENABLE_NOTIFICATIONS` which is used to define whether the notification feature is enabled or not. This way,
  if `Mailgun` and the email settings haven't been configured, the notification feature can be disabled thus preventing
  the app from crashing when trying to send notifications.

## [0.13.0] - 2020-03-11

This release syncs the latest changes from [linkedevents](https://github.com/City-of-Helsinki/linkedevents)
([commits 907bbda...ef70f3f](https://github.com/City-of-Helsinki/linkedevents/compare/907bbda9996be33011519bf4681f3ec974815698...ef70f3f332557a8e27316754ed9fdb11d960dd0f))
to `espooevents-service`.

### Added

- Price info to Helmet events ([City-of-Helsinki/linkedevents#367](https://github.com/City-of-Helsinki/linkedevents/pull/367),
  [City-of-Helsinki/linkedevents#351](https://github.com/City-of-Helsinki/linkedevents/issues/351))
- A list of the user's organizations on the user page in the Django admin site ([City-of-Helsinki/linkedevents#368](https://github.com/City-of-Helsinki/linkedevents/pull/368),
  [City-of-Helsinki/linkedevents#302](https://github.com/City-of-Helsinki/linkedevents/issues/302))
- An alternative Oodi library ID to the Helmet importer ([City-of-Helsinki/linkedevents@79c2506](https://github.com/City-of-Helsinki/linkedevents/commit/79c2506d2f1187c4722a0eca783b6b918dc4584d))
- Notification feature for sending automatic emails using [Mailgun](https://www.mailgun.com) for certain publishing
  events ([City-of-Helsinki/linkedevents#365](https://github.com/City-of-Helsinki/linkedevents/pull/365), [City-of-Helsinki/linkedevents#333](https://github.com/City-of-Helsinki/linkedevents/issues/333))
- Notification feature for sending automatic emails when a new user is created ([City-of-Helsinki/linkedevents#381](https://github.com/City-of-Helsinki/linkedevents/pull/381),
  [City-of-Helsinki/linkedevents#379](https://github.com/City-of-Helsinki/linkedevents/issues/379))
- A `created_by` filter to the event API endpoint ([City-of-Helsinki/linkedevents@7bb878a](https://github.com/City-of-Helsinki/linkedevents/commit/7bb878aa554d6ecfdfaf179f029522af3286b5bc))
- A `created_by` filter to the image API endpoint ([City-of-Helsinki/linkedevents@57d7613](https://github.com/City-of-Helsinki/linkedevents/commit/57d7613d2f264a79985814caa677145aa8132602))
- Support for configuring the `USE_X_FORWARDED_HOST` setting using an environment variable ([City-of-Helsinki/linkedevents#370](https://github.com/City-of-Helsinki/linkedevents/pull/370))
  - **NOTE!** The `TRUST_X_FORWARDED_HOST` environment variable introduced in this change is in conflict with some of
    Espoo Events changes and has therefore been renamed to `USE_X_FORWARDED_HOST`
- Event publication status on the event page in the Django admin site ([City-of-Helsinki/linkedevents@03ac844](https://github.com/City-of-Helsinki/linkedevents/commit/03ac844532167ab5119279231f2cac493f16abc7))
- The `replaced_by` field to keywords and events to be able to mark that a keyword or event has been replaced by another
  keyword or event ([City-of-Helsinki/linkedevents#375](https://github.com/City-of-Helsinki/linkedevents/pull/375), [City-of-Helsinki/linkedevents#341](https://github.com/City-of-Helsinki/linkedevents/issues/341))
- A `publisher_ancestor` filter to the event API endpoint ([City-of-Helsinki/linkedevents#376](https://github.com/City-of-Helsinki/linkedevents/pull/376),
  [City-of-Helsinki/linkedevents#280](https://github.com/City-of-Helsinki/linkedevents/issues/280))
- A predefined user group `Light Admins` to the Django admin site ([City-of-Helsinki/linkedevents#378](https://github.com/City-of-Helsinki/linkedevents/pull/378),
  [City-of-Helsinki/linkedevents#339](https://github.com/City-of-Helsinki/linkedevents/issues/339))
- A missing test for the event `bbox` filter ([City-of-Helsinki/linkedevents@1238d84](https://github.com/City-of-Helsinki/linkedevents/commit/1238d846f7e30686f8274549ab7af3639a30075f),
  [City-of-Helsinki/linkedevents@264431e](https://github.com/City-of-Helsinki/linkedevents/commit/264431ed6c889c6c59c4113876925df8445fadaa))
- A `show_deleted` filter to the event API endpoint ([City-of-Helsinki/linkedevents#389](https://github.com/City-of-Helsinki/linkedevents/pull/389),
  [City-of-Helsinki/linkedevents#385](https://github.com/City-of-Helsinki/linkedevents/issues/385))
- `keyword_AND`, `keyword_OR`, and `keyword!=` filters to the API ([City-of-Helsinki/linkedevents#388](https://github.com/City-of-Helsinki/linkedevents/pull/388),
  [City-of-Helsinki/linkedevents#383](https://github.com/City-of-Helsinki/linkedevents/issues/383))
- Documentation for the `lippupiste` importer ([City-of-Helsinki/linkedevents@b10b5a1](https://github.com/City-of-Helsinki/linkedevents/commit/b10b5a107bb6fd6aadd75f8c275d12139d2b8bdd),
  [City-of-Helsinki/linkedevents@5422261](https://github.com/City-of-Helsinki/linkedevents/commit/54222611d0dd57fc935becb7b0543b5389fad8a9))
- A `now` filter for event start and end times in the event API ([City-of-Helsinki/linkedevents@44c4efb](https://github.com/City-of-Helsinki/linkedevents/commit/44c4efb78e933960ed57fd5efb3ea6bb1a27ce41))

### Changed

- The Helsinki-specific Travis configuration to run `flake8` and `pytest` also for the `helevents` app
  - **NOTE!** Since the Travis configuration has been dropped from `espooevents-service`, this change has been instead
    done to the `bin/test_ci.sh` script which is run by CircleCI
- The Lippupiste importer setting `LIPPUPISTE_EVENT_API_URL` to be configurable using an environment variable ([City-of-Helsinki/linkedevents#373](https://github.com/City-of-Helsinki/linkedevents/pull/373))
- Improved one of the error messages in the Lippupiste importer ([City-of-Helsinki/linkedevents#386](https://github.com/City-of-Helsinki/linkedevents/pull/386))
- A check in the image validation of the API ([City-of-Helsinki/linkedevents@3f66e23](https://github.com/City-of-Helsinki/linkedevents/commit/3f66e23bb6be4b5c2d88128984511cc08a93e060))
- Upgraded requirements to latest versions ([City-of-Helsinki/linkedevents#380](https://github.com/City-of-Helsinki/linkedevents/pull/380),
  [City-of-Helsinki/linkedevents#372](https://github.com/City-of-Helsinki/linkedevents/issues/372))
  - **NOTE!** The new settings file for test settings `linkedevents/test_settings.py` introduced in this change is in
    conflict with some of the Espoo Events changes and has therefore been merged with `linkedevents/test.py`
- The `kulke` importer YSO keyword mappings based on the current standards ([City-of-Helsinki/linkedevents@7c6fe66](https://github.com/City-of-Helsinki/linkedevents/commit/7c6fe66aa7d1cecdeec45969e0c508e01d2e08ba))
- Improved the performance of saving events ([City-of-Helsinki/linkedevents@8ba42da](https://github.com/City-of-Helsinki/linkedevents/commit/8ba42dae772e0b7b90a16b3d809e9a97feaa0681),
  [City-of-Helsinki/linkedevents@1a3ac35](https://github.com/City-of-Helsinki/linkedevents/commit/1a3ac358ca3e3f0021c44751ec96900f7c31bebf))
- The `espoo` importer to prevent it from matching to deprecated keywords ([City-of-Helsinki/linkedevents@b24ce5a](https://github.com/City-of-Helsinki/linkedevents/commit/b24ce5aa16b545167e78e1b481036d3ae026f532))
- Improved one of the event model save method exceptions ([City-of-Helsinki/linkedevents@b227be5](https://github.com/City-of-Helsinki/linkedevents/commit/b227be54acaab22a9525784ba7181d52979e3c97))
- The base importer to allow for updating events with deprecated keywords with non-deprecated ones ([City-of-Helsinki/linkedevents@212b3ea](https://github.com/City-of-Helsinki/linkedevents/commit/212b3eacc54349a056975f12ccadbc1f914a2b5b))
- The event model save method to allow the deletion of events with deprecated keywords ([City-of-Helsinki/linkedevents@7eccc8d](https://github.com/City-of-Helsinki/linkedevents/commit/7eccc8d4e41e19d9e1e7d286c75e817e0601efc6))
- The `helmet` importer to use up-to-date YSO keywords ([City-of-Helsinki/linkedevents@620640e](https://github.com/City-of-Helsinki/linkedevents/commit/620640e3648b8779ea070580fe11dc1fc7dda181))
- The `espoo`, `helmet`, `kulke`, and `yso` importers and the `add_helsinki_audience` management command to use the new
  YSO keyword for elderly ([City-of-Helsinki/linkedevents@c759774](https://github.com/City-of-Helsinki/linkedevents/commit/c759774f17e039e3a0b72c30c2019cccc0dae40f))
- The events API to add support for filtering with replaced keywords for limited backwards YSO compatibility ([City-of-Helsinki/linkedevents@c3dc6b4](https://github.com/City-of-Helsinki/linkedevents/commit/c3dc6b4665da4db7b7aa190ed7b9f445e932ed44))
- Replaced generic exceptions with `ValidationError` exceptions in the event model ([City-of-Helsinki/linkedevents@3d7b123](https://github.com/City-of-Helsinki/linkedevents/commit/3d7b123b8b57cbb103fa45634b875c544ca78029))
- The keyword `text` filter to also search in alt labels ([City-of-Helsinki/linkedevents@6645351](https://github.com/City-of-Helsinki/linkedevents/commit/664535197e2f03e3241c3e5e8f99db148afa3be4))
- The `kulke` importer by removing the youth keyword ([City-of-Helsinki/linkedevents@b6952ed](https://github.com/City-of-Helsinki/linkedevents/commit/b6952ed12f8f1ce1bb4acc336622597ef17ef75f))
- The `espoo`, `kulke`, and `lippupiste` importers to clean and validate importer URLs to get rid of any invalid
  incoming strings ([City-of-Helsinki/linkedevents@5d0dba0](https://github.com/City-of-Helsinki/linkedevents/commit/5d0dba0a62f41c428dab13ef272b0039a683bd17),
  [City-of-Helsinki/linkedevents@a13b4e9](https://github.com/City-of-Helsinki/linkedevents/commit/a13b4e970b8c9a389e1f65e5731c87c053591541))
- The `kulke` importer to prevent its time regex from falsely matching to single times ([City-of-Helsinki/linkedevents@9902127](https://github.com/City-of-Helsinki/linkedevents/commit/9902127b9d70bb17f253a4cd3d1576051b9d7748))
- Updated the importer documentation in the `README` ([City-of-Helsinki/linkedevents@ca2ade2](https://github.com/City-of-Helsinki/linkedevents/commit/ca2ade26c96ef48e835f634da54adf0b2f258b78),
  [City-of-Helsinki/linkedevents@c37f523](https://github.com/City-of-Helsinki/linkedevents/commit/c37f523616829f85276073d658da50030d447792))
- The events API to only return events with the specified end times after their starting hour ([City-of-Helsinki/linkedevents@df1101a](https://github.com/City-of-Helsinki/linkedevents/commit/df1101a5048000ab8df8b9bf4b376e3d4fda50fc))

### Fixed

- `flake8` issues in the `espoo` importer ([City-of-Helsinki/linkedevents@6bf6489](https://github.com/City-of-Helsinki/linkedevents/commit/6bf64893b1acb88065b606081316c53e11c8bccc))
- Some of the Django admin site dropdowns which didn't render because they were too big by instead using autocomplete
  fields ([City-of-Helsinki/linkedevents#369](https://github.com/City-of-Helsinki/linkedevents/pull/369), [City-of-Helsinki/linkedevents#366](https://github.com/City-of-Helsinki/linkedevents/issues/366))
- A timezone error in the notification feature ([City-of-Helsinki/linkedevents#371](https://github.com/City-of-Helsinki/linkedevents/pull/371))
- The failing `helevents` tests ([City-of-Helsinki/linkedevents@ff8f43b](https://github.com/City-of-Helsinki/linkedevents/commit/ff8f43b52a3447c16b2fcd86af20077c7d78b445),
  [City-of-Helsinki/linkedevents@50268b0](https://github.com/City-of-Helsinki/linkedevents/commit/50268b0689405405db988fe6d7ad8b4b9508b30a))
- `django-munigeo` by upgrading it to a working version ([City-of-Helsinki/linkedevents@543c49a](https://github.com/City-of-Helsinki/linkedevents/commit/543c49ab67d6f9509d29c2acd6066a96bbb223db))
- The `docx` renderer crashing with missing event data ([City-of-Helsinki/linkedevents@c1654ff](https://github.com/City-of-Helsinki/linkedevents/commit/c1654ff85e98b9e7134eae3c5033db091249db01))
- The `lippupiste` importer from updating past events ([City-of-Helsinki/linkedevents#391](https://github.com/City-of-Helsinki/linkedevents/pull/391),
  [City-of-Helsinki/linkedevents#384](https://github.com/City-of-Helsinki/linkedevents/issues/384))
- An issue with the `division` filter ([City-of-Helsinki/linkedevents@00a1194](https://github.com/City-of-Helsinki/linkedevents/commit/00a11943e69815ee931883909d75b92d21685766))
- The notification feature to not send "Event published" and "Event deleted" notifications to the last modifier of an
  event and to only send "Event deleted" notifications for draft events ([City-of-Helsinki/linkedevents#395](https://github.com/City-of-Helsinki/linkedevents/pull/395))
- The event API to check for `NUL` strings in all query parameters ([City-of-Helsinki/linkedevents@b3c7fbb](https://github.com/City-of-Helsinki/linkedevents/commit/b3c7fbb2627c0ba1e565c3559489d14976c89bd5))
- An issue with dates that caused `psycopg` to crash ([City-of-Helsinki/linkedevents@ef70f3f](https://github.com/City-of-Helsinki/linkedevents/commit/ef70f3f332557a8e27316754ed9fdb11d960dd0f))

### Security

- Upgraded the insecure version of [pillow](https://github.com/python-pillow/Pillow) to version `7.0.0` ([City-of-Helsinki/linkedevents@7c4716e](https://github.com/City-of-Helsinki/linkedevents/commit/7c4716e7fe2c561b889ab55feef0c2e67d2e16ee))

## [0.12.1] - 2020-03-11

### Fixed

- The issue with the `espooevents-service` admin site not working correctly when multiple instances are deployed. The
  issue was caused by `linkedevents/settings.py` not reading the `SECRET_KEY` environment variable causing the app to
  always generate a file-based secret key. This, in turn, caused each deployed instance to have different local secret
  keys whereby they couldn't access each others sessions since they used different secrets. Because of this an admin
  user randomly appeared to be logged out from the admin site depending on which instance received the request. This was
  fixed by making `linkedevents/settings.py` read the `SECRET_KEY` environment variable so that each instance uses the
  same secret for the admin site sessions.

## [0.12.0] - 2020-03-10

### Added

- Support for running `espooevents-service` behind a proxy so that the hostnames, e.g., in the links in the browsable
  API are shown correctly. This is achieved by accepting the following environment variables which control the behaviour
  of the app when running it behind a proxy:
  - [SECURE_PROXY_SSL_HEADER](https://docs.djangoproject.com/en/dev/ref/settings/#secure-proxy-ssl-header) which should
    be set to `('HTTP_X_FORWARDED_PROTO', 'https')` when running the app behind a proxy which terminates the TLS
    connection
  - [USE_X_FORWARDED_HOST](https://docs.djangoproject.com/en/dev/ref/settings/#use-x-forwarded-host) which should be set
    to `True` when running the app behind a proxy
- A custom Django middleware to replace the `X-Forwarded-{Port|Proto}` header values based on the values specified in
  the headers defined by the following environment variables:
  - `CUSTOM_X_FORWARDED_PORT_HEADER` for specifying the custom header which should be used to override the
    `X-FORWARDED-PORT` header value
  - `CUSTOM_X_FORWARDED_PROTO_HEADER` for specifying the custom header which should be used to override the
    `X-FORWARDED-PROTO` header value

  The middleware has been added to circumvent the issue with AWS load balancers overwriting the
  `X-Forwarded-{Port|Proto}` headers whereby setting them in a reverse proxy has no effect if the reverse proxy routes
  requests to the app via a load balancer. For more information, see the [AWS documentation](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/x-forwarded-headers.html).

## [0.11.0] - 2020-03-06

### Added

- [django-redis](https://github.com/jazzband/django-redis) for configuring Redis for session storage in order to make
  `espooevents-service` stateless which enables the deployment of multiple `espooevents-service` instances for better
  fault tolerance. The Docker images now accept the following environment variables for configuring the session cache:
  - `CACHE_HOST` for configuring the Redis host
  - `CACHE_PASSWORD` for configuring the Redis password
- Docker Compose configuration for setting up a local Redis instance for local development
- Configuration for tests for using an in-memory cache for storing sessions in order to simplify the configuration
  needed for running tests

### Changed

- **BREAKING:** Prefixed the database environment variables accepted by the different Docker entrypoint scripts with
  `DB_` so that it's easier to distinguish the DB environment variables from the Redis environment variables

## [0.10.0] - 2020-03-02

### Added

- Support for storing media files in AWS S3 using a [custom storage backend](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#overriding-the-default-storage-class)
  that accepts the following environment variables for configuring media file storage:
  - [AWS_MEDIA_DEFAULT_ACL](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#settings)
  - [AWS_MEDIA_S3_CUSTOM_DOMAIN](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#cloudfront)
  - [AWS_MEDIA_STORAGE_BUCKET_NAME](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#settings)
  - [DEFAULT_FILE_STORAGE](https://docs.djangoproject.com/en/dev/ref/settings/#default-file-storage) for specifying the
    the custom media storage backend class to be used

### Changed

- **BREAKING:** Renamed the environment variables used for configuring static file storage so that it's easier to
  distinguish them from the corresponding media file storage environment variables. The new environment variables are
  the following:
  - [AWS_STATIC_DEFAULT_ACL](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#settings)
  - [AWS_STATIC_S3_CUSTOM_DOMAIN](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#cloudfront)
  - [AWS_STATIC_STORAGE_BUCKET_NAME](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#settings)

## [0.9.0] - 2020-03-02

### Added

- [django-storages](https://github.com/jschneier/django-storages) and [boto3](https://github.com/boto/boto3) and
  configured them for storing static files in AWS S3 and changed `entrypoint.dist.sh` to run `collectstatic` for copying
  static files to the location specified by `settings.STATIC_ROOT`. The app now also accepts the following environment
  variables for configuring static file storage:
  - [AWS_DEFAULT_ACL](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#settings)
  - [AWS_S3_CUSTOM_DOMAIN](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#cloudfront)
  - [AWS_STORAGE_BUCKET_NAME](https://django-storages.readthedocs.io/en/latest/backends/amazon-S3.html#settings)
  - [STATICFILES_STORAGE](https://docs.djangoproject.com/en/dev/ref/settings/#staticfiles-storage)
- Example commands to `Makefile` for importing Helsinki's audience and topic keywords and for creating a Django
  superuser
- A CircleCI `build` job for automatically installing the city-specific Linked Events templates for the browsable API as
  part of the CircleCI workflow
- CircleCI configuration for checking if a deployment succeeded and reverting to the previous deployment on failure.
  This makes deployments more robust by automating rollbacks on failure.
- Docker Layer Caching for the `test` and `dockerize` jobs on CircleCI to speed up Docker builds

### Changed

- Renamed `entrypoint.importer.sh` to `entrypoint.admin.sh` and also renamed `importer` to `admin` in other places using
  the importer Docker image since the importer Docker image is used also for other administrative tasks besides
  importing
- Refactored the CircleCI configuration to split the distribution and importer dockerizations to their own jobs for
  being able to run the jobs in parallel and thus speeding up the CircleCI workflow
- The CircleCI configuration to only target the `espooevents-service` ECS module on deployments with
  `terraform apply` since we don't want deployments to fail because of errors in the other ECS modules

## [0.8.0] - 2020-02-27

### Added

- A new multi-stage build stage to `Dockerfile.dist` for creating a separate Docker image for running the importers
  using AWS Batch jobs and a corresponding `entrypoint.importer.sh` entrypoint script for setting up the required
  environment variables and fetching the DB credentials from AWS SSM Parameter Store
- New build steps to the CircleCI `dockerize` job for building and uploading the importer Docker image to AWS ECR
- Example commands to `Makefile` for building the importer Docker image and for running some of the importers and
  management commands locally

### Changed

- The `EditorConfig` configuration to use tabs for Makefiles since Makefiles don't support spaces
- The `EditorConfig` configuration to use 4 spaces for Python files since that's an established convention and adheres
  to the official [pep8](https://www.python.org/dev/peps/pep-0008/) code style guide for Python code
- The shell scripts to use an indentation of 2 spaces instead of 4 spaces
- Refactored the CircleCI configuration to use CircleCI's own structures for code reuse instead of using YAML aliases
  and anchors
- Refactored how the variables are passed to the `dockerize` job in the CircleCI configuration

### Fixed

- Added the missing `flake8` command to the `lint` task in the `Makefile`

## [0.7.0] - 2020-02-15

### Added

- CircleCI configuration for deploying to the dev, test, staging, and prod environments
- An `entrypoint.dist.sh` entrypoint script for the distribution Docker image to:
  - Inspect the Django project for common problems
  - Run DB migrations
  - Sync translation fields
  - Provide the required environment variables, such as DB configs, to run the app
  - Run the app with `Gunicorn`

### Changed

- Replaced the current database initialization scripts with more thorough database initialization scripts that are
  compatible with AWS RDS and also create the necessary users, roles, privileges, and databases in addition to
  installing the necessary DB extensions. In addition to the master DB user, two additional DB users are now created:
  - A DB migration user with less privileges than the master DB user but with enough privileges to run DB migrations
  - A DB application user with less privileges than the migration DB user but with enough privileges to be able to
    perform the DB operations needed to run the application

  It's also good to be aware that the PostgreSQL public schema has some [security concerns](https://wiki.postgresql.org/wiki/A_Guide_to_CVE-2018-1058%3A_Protect_Your_Search_Path#Do_not_allow_users_to_create_new_objects_in_the_public_schema).
  Thus, the database initialization script now also revokes all privileges from the public schema.
- The CircleCI and Docker Compose configuration files and scripts to provide the necessary DB configs, such as users and
  passwords, in order to initialize the database successfully
- The `docker/django/docker-entrypoint.sh` script to check for required DB environment variables and provide them to the
  Django management commands
- The default DB master user credentials used in local development and when running tests
- Moved all scripts to the `bin` directory in order to clean up the project root
- Refactored code to remove as many references to `espooevents-service` as possible in order to keep the code general
  and compatible with the upstream `linkedevents` repository
- The distribution Docker image to use the official Python Docker image as the base image instead of the Voltti Ubuntu
  image in order to minimize dependencies to Voltti and to benefit from security updates to the official image. Also,
  made some changes to set up the timezones, locales, and a non-root user based on common Voltti practices.
- The example commands in the `Makefile` to provide the required arguments and environment variables for using the
  official Python image and for running the app using Docker
- Refactored the CircleCI configuration to use YAML aliases for CircleCI contexts

## [0.6.0] - 2020-01-30

### Added

- Instructions for manually generating JSON Web Tokens (JWT) in order to more easily test JWT authentication and the API
  if needed. This also documents the JWT structure expected by `espooevents-service`.

## [0.5.0] - 2020-01-28

### Added

- CircleCI configuration and scripts for linting and testing the code and for building and uploading the distribution
  Docker image to AWS ECR
- [CircleCI Slack orb](https://circleci.com/developer/orbs/orb/circleci/slack) to be able to notify of failed builds to
  Slack
- [CircleCI Jira orb](https://circleci.com/developer/orbs/orb/circleci/jira) for updating the CircleCI build status to
  Jira
- A separate settings file to be used when running tests. For now, the settings file only contains the test database
  URL.
- Git hooks for running the following tools:
  - [flake8](https://flake8.pycqa.org/en/latest/) for linting Python files and ensuring that a common coding style is
    used
  - [circleci](https://github.com/CircleCI-Public/circleci-cli) CLI tool for validating the CircleCI config
  - [yamllint](https://github.com/adrienverge/yamllint) for linting the CircleCI config and other YAML files
  - [truffleHog](https://github.com/dxa4481/truffleHog) for preventing non-AWS credentials from being committed to the
    repo thus complementing `git-secrets`
- The `lint` example command to the Makefile for being able to easily run the `flake8` linter

### Removed

- The Helsinki-specific Travis configuration file since Espoo Events uses CircleCI for continuous integration and
  delivery

### Fixed

- `flake8` lint errors in `linkedevents/prod.py` by ignoring the errors since these errors aren't relevant when
  extending Django settings
- `yamllint` lint errors and warnings in the YAML files

## [0.4.0] - 2020-01-22

### Added

- [Gunicorn](https://github.com/benoitc/gunicorn) to the production dependencies so that we can use it to run the Django
  app in production inside a Docker container
- A separate placeholder settings file for the production environment
- Docker configuration for distributing and running the app in the other non-local environments, e.g., production
- A Makefile as a cheatsheet with examples for running and debugging different commands, e.g., Docker commands locally

### Changed

- The Django configs to not install the `django_extensions` app in production so that we don't need to install
  development dependencies in production

## [0.3.0] - 2020-01-20

### Added

- [EditorConfig](https://editorconfig.org/) file for making sure that developers use consistent IDE settings
- Scripts to manage and install Git hooks for running the following tools:
  - [gitlint](https://github.com/jorisroovers/gitlint) for checking that the commit messages adhere to the
    [Conventional Commits specification](https://www.conventionalcommits.org/en/)
  - [git-secrets](https://github.com/awslabs/git-secrets) for preventing AWS credentials from being committed to the
    repo
- A health endpoint that can be used by load balancer health checks to see whether `espooevents-service` is running or
  not

### Changed

- Updated some of the instructions related to setting up the local development environment, e.g., installing the Git
  hooks

## [0.2.0] - 2020-01-16

### Added

- GitHub pull request template with a definition of done checklist for ensuring that the necessary steps have been done
  before merging and releasing the change
- GitHub code owners file for specifying the owners of the repository

## [0.1.0] - 2020-01-10

### Added

- A fork of the [linkedevents](https://github.com/City-of-Helsinki/linkedevents) repository starting from commit
  [City-of-Helsinki/linkedevents@907bbda](https://github.com/City-of-Helsinki/linkedevents/commit/907bbda9996be33011519bf4681f3ec974815698).
  The repository was forked so that we can apply the necessary changes to get `linkedevents` to run in the City of
  Espoo's Voltti environment according to Voltti's conventions. The purpose is to keep `espooevents-service` as close as
  possible to the original `linkedevents` so that it's compatible with the upstream which in turn makes it possible to
  cooperate and share changes between the repositories. Thus, any Espoo Events specific code should be avoided or kept
  to a minimum. This version marks the initial `0.1.0` relase and the initial `linkedevents` commit on which
  `espooevents-service` is based on.

[1.12.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.11.1...espoo-v1.12.0
[1.11.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.11.0...espoo-v1.11.1
[1.11.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.21...espoo-v1.11.0
[1.10.21]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.20...espoo-v1.10.21
[1.10.20]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.19...espoo-v1.10.20
[1.10.19]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.18...espoo-v1.10.19
[1.10.18]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.17...espoo-v1.10.18
[1.10.17]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.16...espoo-v1.10.17
[1.10.16]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.15...espoo-v1.10.16
[1.10.15]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.14...espoo-v1.10.15
[1.10.14]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.13...espoo-v1.10.14
[1.10.13]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.12...espoo-v1.10.13
[1.10.12]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.11...espoo-v1.10.12
[1.10.11]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.10...espoo-v1.10.11
[1.10.10]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.9...espoo-v1.10.10
[1.10.9]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.8...espoo-v1.10.9
[1.10.8]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.7...espoo-v1.10.8
[1.10.7]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.6...espoo-v1.10.7
[1.10.6]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.5...espoo-v1.10.6
[1.10.5]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.4...espoo-v1.10.5
[1.10.4]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.3...espoo-v1.10.4
[1.10.3]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.2...espoo-v1.10.3
[1.10.2]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.1...espoo-v1.10.2
[1.10.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.10.0...espoo-v1.10.1
[1.10.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.9.2...espoo-v1.10.0
[1.9.2]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.9.1...espoo-v1.9.2
[1.9.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.9.0...espoo-v1.9.1
[1.9.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.8.1...espoo-v1.9.0
[1.8.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.8.0...espoo-v1.8.1
[1.8.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.7.0...espoo-v1.8.0
[1.7.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.6.1...espoo-v1.7.0
[1.6.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.6.0...espoo-v1.6.1
[1.6.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.5.0...espoo-v1.6.0
[1.5.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.4.0...espoo-v1.5.0
[1.4.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.3.0...espoo-v1.4.0
[1.3.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.2.1...espoo-v1.3.0
[1.2.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.2.0...espoo-v1.2.1
[1.2.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.1.1...espoo-v1.2.0
[1.1.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.1.0...espoo-v1.1.1
[1.1.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v1.0.0...espoo-v1.1.0
[1.0.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.20.0...espoo-v1.0.0
[0.20.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.19.0...espoo-v0.20.0
[0.19.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.18.0...espoo-v0.19.0
[0.18.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.17.0...espoo-v0.18.0
[0.17.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.16.0...espoo-v0.17.0
[0.16.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.15.1...espoo-v0.16.0
[0.15.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.15.0...espoo-v0.15.1
[0.15.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.14.1...espoo-v0.15.0
[0.14.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.14.0...espoo-v0.14.1
[0.14.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.13.1...espoo-v0.14.0
[0.13.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.13.0...espoo-v0.13.1
[0.13.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.12.1...espoo-v0.13.0
[0.12.1]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.12.0...espoo-v0.12.1
[0.12.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.11.0...espoo-v0.12.0
[0.11.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.10.0...espoo-v0.11.0
[0.10.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.9.0...espoo-v0.10.0
[0.9.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.8.0...espoo-v0.9.0
[0.8.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.7.0...espoo-v0.8.0
[0.7.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.6.0...espoo-v0.7.0
[0.6.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.5.0...espoo-v0.6.0
[0.5.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.4.0...espoo-v0.5.0
[0.4.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.3.0...espoo-v0.4.0
[0.3.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.2.0...espoo-v0.3.0
[0.2.0]: https://github.com/espoon-voltti/espooevents-service/compare/espoo-v0.1.0...espoo-v0.2.0
[0.1.0]: https://github.com/espoon-voltti/espooevents-service/releases/tag/espoo-v0.1.0
