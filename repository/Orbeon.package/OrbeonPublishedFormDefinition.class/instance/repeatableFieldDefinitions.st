other
repeatableFieldDefinitions
	"The receiver answer a collection with all repeatable field definitions"

	^self fieldDefinitions select: [:each | each isRepeatable]