published forms
getLastFormDefinitionVersionOf: formName
	"The receiver answer the last version number of the form definition named <formName>"

	^(self registryForFormNamed: formName ifNone: [^0]) getLastVersionNumber