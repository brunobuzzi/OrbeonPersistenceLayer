other
searchFields
	"Answer a collection with the search fields of the receiver"
	| searchs |

	searchs := OrderedCollection new.
	sectionDefinitions do: [:eachDef | searchs addAll: (eachDef searchFields collect: [:each | each name])].

	^searchs