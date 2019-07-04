all forms
getAllInstancesKeysOfFormNamed: formName version: version
	"The receiver answer all keys of form instances of form definition named <formName>"

	^(self registryForFormNamed: formName ifNone: [^#()]) getAllInstancesKeysOf: version