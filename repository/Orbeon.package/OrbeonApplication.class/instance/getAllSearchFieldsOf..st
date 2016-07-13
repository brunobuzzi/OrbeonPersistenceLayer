all forms
getAllSearchFieldsOf: formName
	"The receiver answer a collection with all search fields of the form definition named <formName>"

	^(self registryForFormNamed: formName ifNone: [^#()]) getAllSearchFields