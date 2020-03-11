definitions
sqlGetLastDefinitionOf: formName in: appName

	^'mysql -h ',self databaseIP,' -u ',self databaseUser,' -p',self databasePassword,' -N -B -e "select xml from orbeon.orbeon_form_definition where app=''', appName, ''' and form=''', formName,'''  order by last_modified_time desc limit 1" '