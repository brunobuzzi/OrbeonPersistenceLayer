all forms
getAllInstancesKeysOfFormNamed: formName
	"The receiver answer all keys of form instances of form definition named <formName>"

	^(self registryForFormNamed: formName ifNone: [^#()]) getAllInstancesKeys