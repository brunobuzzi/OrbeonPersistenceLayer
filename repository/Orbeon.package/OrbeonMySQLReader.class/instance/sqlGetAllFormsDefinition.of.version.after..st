definitions
sqlGetAllFormsDefinition: form of: app version: version after: timeStampString

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,
	' -N -B -e "select * from (select created, last_modified_time, concat(''_'', last_modified_by), app, form, deleted, form_version ,xml from orbeon.orbeon_form_definition where app = ''', 
		app, ''' and form= ''', form, ''' and form_version = ', version ,' and last_modified_time > ''',  timeStampString, ''' and deleted=''N'' 
		order by last_modified_time desc) lastDef group by form " '