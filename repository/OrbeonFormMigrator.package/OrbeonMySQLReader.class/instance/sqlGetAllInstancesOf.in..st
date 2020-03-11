instance
sqlGetAllInstancesOf: formName in: appName 

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select created, last_modified_time, last_modified_by, document_id, deleted, username, groupname from orbeon.orbeon_form_data where app=''', appName, ''' and form=''', formName,'''  order by last_modified_time desc" '