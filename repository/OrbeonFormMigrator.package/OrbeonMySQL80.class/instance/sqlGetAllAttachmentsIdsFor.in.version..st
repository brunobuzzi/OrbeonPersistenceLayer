attachments
sqlGetAllAttachmentsIdsFor: formName in: appName version: version

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select file_name from orbeon.orbeon_form_definition_attach where app = ''', appName , ''' and form = ''', formName ,''' and form_version = ', version printString, ' " '