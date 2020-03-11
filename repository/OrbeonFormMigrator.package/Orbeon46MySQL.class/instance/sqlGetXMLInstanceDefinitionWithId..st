instance definition
sqlGetXMLInstanceDefinitionWithId: id

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select xml from (SELECT xml FROM orbeon.orbeon_form_data where xml is not null and app=''orbeon'' and form=''builder'' and document_id = ''', id, ''' order by last_modified_time desc) lastDef limit 1; " '