definitions
sqlGetAllFormsDefinitionOf: appName

	^'mysql -h ',self databaseIP,' -u ',self databaseUser,' -p',self databasePassword,' -N -B -e "select * from (select form from orbeon.orbeon_form_definition where app=''', appName, ''' and deleted=''N'' order by last_modified_time) lastDef group by form "'