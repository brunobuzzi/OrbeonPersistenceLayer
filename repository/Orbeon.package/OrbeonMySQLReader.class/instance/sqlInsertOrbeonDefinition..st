insert
sqlInsertOrbeonDefinition: anOrbeonFormDefinition

	^'mysql -h ',self databaseIP,' -u ',self databaseUser,' -p',self databasePassword,' -N -B -e "INSERT INTO orbeon_metadata.orbeon_form_definition (orbeon_id, form_name, app, version, created_time, modified_time, deleted, isPublished) VALUES (''', anOrbeonFormDefinition id, ''',', '''',anOrbeonFormDefinition formName, ''',', '''', anOrbeonFormDefinition app, ''',','''01'',', '''',anOrbeonFormDefinition createdTime printMySqlString, ''',', '''', anOrbeonFormDefinition modifiedTime printMySqlString, ''',', '''N'',', '''S''', ')"'