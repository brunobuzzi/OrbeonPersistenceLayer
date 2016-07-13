attachments
sqlDumpFileDefinitionAttachmentOn: path definitionId: definitionId fileId: fileId version: version

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select file_content INTO DUMPFILE ''', path, definitionId, '-', fileId, ''' from orbeon.orbeon_form_definition_attach where file_name = ''', fileId , ''' and form_version = ', version printString, ' " '