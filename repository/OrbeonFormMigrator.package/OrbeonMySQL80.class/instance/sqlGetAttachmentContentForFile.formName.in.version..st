attachments
sqlGetAttachmentContentForFile: fileId formName: formName in: appName version: version

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select file_content from orbeon.orbeon_form_definition_attach where file_name = ''', fileId , ''' and app = ''', appName , ''' and form = ''', formName ,''' and form_version = ', version printString, ' " '