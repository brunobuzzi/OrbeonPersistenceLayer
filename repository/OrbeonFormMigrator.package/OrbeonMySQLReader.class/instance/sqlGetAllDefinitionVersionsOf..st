application
sqlGetAllDefinitionVersionsOf: appName

	^'mysql -h ',self databaseIP,' -u ',self databaseUser,' -p',self databasePassword,' -N -B -e "select app, form, form_version from orbeon.orbeon_form_definition where app = ''', appName , ''' group by app, form, form_version " '