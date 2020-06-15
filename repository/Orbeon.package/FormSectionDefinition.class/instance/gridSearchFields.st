other
gridSearchFields
	"The receiver answer a collection of search fields in child grids"
	| searchs |

	searchs := OrderedCollection new.
	gridDefinitions do: [:eachGridDef | searchs addAll: eachGridDef searchFields].

	^searchs