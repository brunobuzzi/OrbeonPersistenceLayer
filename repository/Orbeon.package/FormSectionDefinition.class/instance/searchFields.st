other
searchFields
	"The receiver answer a collection with all search fields. Including direct fields and fields in child grids "

	^(fieldDefinitions select: [:each | each isSearch]) asOrderedCollection, self gridSearchFields asOrderedCollection