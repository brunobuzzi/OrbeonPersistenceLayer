other
getFieldNamed: aString
	"The receiver answer a field definition <FormFieldDefinition> named <aString>."

	^self getFieldNamed: aString ifAbsent: []