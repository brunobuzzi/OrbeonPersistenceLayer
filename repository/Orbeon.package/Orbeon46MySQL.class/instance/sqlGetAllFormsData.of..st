instance
sqlGetAllFormsData: form of: app

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select created, last_modified_time, concat(''_'', last_modified_by), app, form, document_id, deleted, xml, concat(''_'', username), concat(''_'', groupname), form_version from orbeon.orbeon_form_data where xml is not null and app = ''', app, ''' and form =''', form, '  " '