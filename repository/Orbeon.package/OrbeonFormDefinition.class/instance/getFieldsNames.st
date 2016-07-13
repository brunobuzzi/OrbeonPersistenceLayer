Accessing
getFieldsNames
	"The receiver answer a collection of field definitions. Iterate over embedded sections"

	^self fieldDefinitions collect: [:each | each name]