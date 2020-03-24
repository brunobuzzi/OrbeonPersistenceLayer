other
importInstancesOfFormVersionFromDate
	| application form applicationName formName date version |

	applicationName := self componentValueAt: 'app-name'.
	formName := self componentValueAt: 'form-name'.
	date := self componentValueAt: 'from-date'.
	version := self componentValueAt: 'version'.
	application := self getOrbeonApplicationClass applicationNamed: applicationName ifNone: [^self].
	form := application getDefinitionNamed: formName withVersion: version ifNone: [^self].

	self getOrbeonWebServerConfiguration databaseMigrator migrateInstancesOf: form version: version from: date printString.