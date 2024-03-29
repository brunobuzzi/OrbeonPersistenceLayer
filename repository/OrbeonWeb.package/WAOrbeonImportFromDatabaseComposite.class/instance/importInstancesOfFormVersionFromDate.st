migration operations
importInstancesOfFormVersionFromDate
	| application form applicationName formName date version |

	applicationName := self componentValueAt: 'app-name'.
	formName := self componentValueAt: 'form-name'.
	date := self componentValueAt: 'from-date'.
	version := self componentValueAt: 'version'.
	application := self session systemRoot applicationNamed: applicationName ifNone: [^self].
	form := application getDefinitionNamed: formName withVersion: version ifNone: [^self].

	self session systemRoot migrateInstancesOf: form version: version from: (self converToTimeStamp: date).