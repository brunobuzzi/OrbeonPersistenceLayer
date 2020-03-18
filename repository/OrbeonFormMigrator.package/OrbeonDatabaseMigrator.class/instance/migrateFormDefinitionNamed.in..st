db migration api
migrateFormDefinitionNamed: aString in: applicationName
	"The receiver migrate ALL VERSIONS (from relational database to GemStone) of the form definition named <aString> in application named <applicationName>"

	^(self getAllVersionsNumberOf: aString in: applicationName)
		do: [:eachVersion | self migrateFormDefinitionNamed: aString version: eachVersion in: applicationName]