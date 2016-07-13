application
sqlGetAllApplicationWithDefinitions

	^'mysql -h ',self databaseIP,' -u ',self databaseUser,' -p',self databasePassword,' -N -B -e "select app, form from orbeon.orbeon_form_definition group by app, form " '