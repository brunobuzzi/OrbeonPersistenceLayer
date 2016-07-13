insert
sqlInsertFieldValue: aFieldValue id: fieldId valueField: valueField

	^'mysql -h ',self databaseIP,' -u ',self databaseUser,' -p',self databasePassword,' -N -B -e "INSERT INTO orbeon_metadata.field_value (field_id, form_instance_id, name, type, ',valueField, ', original_value, error_string) VALUES (''', fieldId printString, ''',', '''', aFieldValue instanceId, ''',', '''', aFieldValue name, ''',', '''', aFieldValue typeName, ''',', '''', aFieldValue value printMySqlString, ''',', '''', aFieldValue originalValue, ''',', '''', aFieldValue errorString printString, '''', ')"'