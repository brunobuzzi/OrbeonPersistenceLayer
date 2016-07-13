other
searchFields
	"Answer a collection with the search fields of the receiver"

	^fieldDefinitions select: [:each | each isSearch]