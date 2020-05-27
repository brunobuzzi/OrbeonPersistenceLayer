migration operations
importApplicationAndFormVersionFromDate
	| applicationName formName date version |

	applicationName := self componentValueAt: 'app-name'.
	formName := self componentValueAt: 'form-name'.
	date := self componentValueAt: 'from-date'.
	version := self componentValueAt: 'version'.

	self getOrbeonWebServerConfiguration databaseMigrator updateFormDefinitionNamed: formName app: applicationName version: version from: (self converToTimeStamp: date)