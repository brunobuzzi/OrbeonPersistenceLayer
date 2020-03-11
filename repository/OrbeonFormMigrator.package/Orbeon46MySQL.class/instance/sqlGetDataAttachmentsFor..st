attachments
sqlGetDataAttachmentsFor: formId

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select document_id, file_name from orbeon.orbeon_form_data_attach where document_id = ''', formId , ''' " '