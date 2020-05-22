Accessing
getNumericFieldsNames
	"The receiver answer a collection of field definitions with numeric type. 
	Iterate over embedded sections"

	^self fieldDefinitionsByTabIndex select: [:each | each isNumeric] thenCollect: [:each | each name]