other
importDataFromDatabase
	| applicationName formName |

	applicationName := self componentValueAt: 'app-name'.
	formName := self componentValueAt: 'form-name'.

	self getOrbeonWebServerConfiguration databaseMigrator migrateFormDefinitionNamed: formName in: applicationName