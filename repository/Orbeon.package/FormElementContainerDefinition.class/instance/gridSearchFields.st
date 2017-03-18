other
gridSearchFields
	"The receiver answer a collection of search fields in child grids"
	| searchs |

	searchs := OrderedCollection new.
	self gridDefinitions do: [:eachGridDef | searchs addAll: eachGridDef searchFields].

	^searchs