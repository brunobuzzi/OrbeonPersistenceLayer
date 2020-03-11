definitions
sqlGetFormDefinitionsVersionsOf: form in: app

	^'mysql -h ', self databaseIP,' -u ',self databaseUser,' -p', self databasePassword,' -N -B -e "select app, form, form_version from (select app, form, form_version from orbeon.orbeon_form_definition where app = ''', app,''' and form = ''', form ,''' order by last_modified_time desc) lastDef group by app, form, form_version" '