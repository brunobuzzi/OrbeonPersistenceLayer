migration api
migrateFormDefinitionNamed: aString
	"The receiver migrate ALL VERSIONS (from MySQL to GemStone) of the form definition named <aString>."

	^(self getAllVersionsNumberOf: aString in: application applicationName)
		do: [:eachVersion | self migrateFormDefinitionNamed: aString version: eachVersion]