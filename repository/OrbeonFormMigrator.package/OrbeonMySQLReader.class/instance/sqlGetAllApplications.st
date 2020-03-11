application
sqlGetAllApplications

	^'mysql -h ',self databaseIP,' -u ',self databaseUser,' -p',self databasePassword,' -N -B -e "select distinct app from orbeon.orbeon_form_definition " '