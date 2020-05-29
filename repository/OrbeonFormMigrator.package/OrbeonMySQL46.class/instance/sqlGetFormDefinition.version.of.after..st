definitions
sqlGetFormDefinition: form version: version of: app after: timeStampString

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,
	' -N -B -e "select * from (select created, last_modified_time, concat(''_'', last_modified_by), app, form, deleted, form_version ,xml from orbeon.orbeon_form_definition where app = ''', 
		app, ''' and form= ''', form, '''', ' and form_version = ', version printString,' and last_modified_time > ''',  timeStampString, ''' and deleted=''N'' order by last_modified_time desc limit 1) lastDef group by form " '