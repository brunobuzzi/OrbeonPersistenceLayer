attachments
sqlGetDataAttachmentContentFor: formId fileId: fileId

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select file_content from orbeon.orbeon_form_data_attach where document_id = ''', formId , ''' and file_name = ''', fileId, ''' " '