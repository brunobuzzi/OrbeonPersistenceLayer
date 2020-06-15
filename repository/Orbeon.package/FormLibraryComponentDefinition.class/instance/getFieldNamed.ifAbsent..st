other
getFieldNamed: aString ifAbsent: aBlock
	"The receiver answer a field definition <FormFieldDefinition> named <aString>.
	NOTE: the receiver does NOT search inside it's grids <FormDefinitionGrid> for the field"

	^sectionDefinition getFieldNamed: aString ifAbsent: aBlock