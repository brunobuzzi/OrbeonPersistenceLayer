other
getFieldNamed: aString ifAbsent: aBlock
	"The receiver answer a field definition <FormFieldDefinition> named <aString>."

	^fieldDefinitions at: aString ifAbsent: aBlock