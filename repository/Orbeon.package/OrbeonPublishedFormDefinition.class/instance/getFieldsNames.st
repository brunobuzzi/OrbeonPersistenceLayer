Accessing
getFieldsNames
	"The receiver answer a collection of field definitions. Iterate over embedded sections"

	^self fieldDefinitionsByTabIndex collect: [:each | each name]