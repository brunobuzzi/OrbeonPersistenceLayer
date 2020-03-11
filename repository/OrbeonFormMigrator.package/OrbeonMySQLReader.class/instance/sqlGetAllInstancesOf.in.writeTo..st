instance
sqlGetAllInstancesOf: formName in: appName writeTo: fileName

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select xml from orbeon.orbeon_form_data where app=''', appName, ''' and form=''', formName,'''  order by last_modified_time desc" > ', fileName