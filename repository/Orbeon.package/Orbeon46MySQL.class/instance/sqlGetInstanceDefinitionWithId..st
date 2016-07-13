instance definition
sqlGetInstanceDefinitionWithId: id

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select created, last_modified_time, document_id, lastMod, user, nameofgroup, xml from (SELECT created, last_modified_time, document_id, concat(''_'', last_modified_by) lastMod, concat(''_'', username) user, concat(''_'', groupname) nameofgroup, xml FROM orbeon.orbeon_form_data where xml is not null and app=''orbeon'' and form=''builder'' and document_id = ''', id, ''' order by last_modified_time desc) lastDef limit 1; " '