instance definition
sqlGetInstanceDefinitionTimeStamp: definitionTimeStamp
	"Answer a register from MySQL Orbeon.Data that represent a FormDefinition."
	| lowerTimeStamp |

	lowerTimeStamp := definitionTimeStamp minusSeconds: 60.

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select last_modified_time, document_id, xml from (SELECT last_modified_time, document_id, xml FROM orbeon.orbeon_form_data where app=''orbeon'' and form=''builder'' and last_modified_time <= ''', definitionTimeStamp printMySqlString, ''' and last_modified_time >= ''', lowerTimeStamp printMySqlString, ''' order by last_modified_time desc) lastDef group by document_id; " '