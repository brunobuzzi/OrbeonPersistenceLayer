instance
sqlGetAllLastFormInstances

	^'mysql -h ', self databaseIP,' -u ', self databaseUser,' -p', self databasePassword,' -N -B -e "select * from (select * from orbeon.orbeon_form_data order by last_modified_time desc) lastDef group by document_id" '