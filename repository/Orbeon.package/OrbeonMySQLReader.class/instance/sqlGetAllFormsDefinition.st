definitions
sqlGetAllFormsDefinition

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select * from orbeon.orbeon_form_definition " '