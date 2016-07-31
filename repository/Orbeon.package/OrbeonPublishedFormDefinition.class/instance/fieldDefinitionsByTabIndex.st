Accessing
fieldDefinitionsByTabIndex
	"The receiver answer a collection of field definitions. Iterate over embedded sections"

	^self fieldDefinitions asSortedCollection: [:a :b | a tabIndex <= b tabIndex]