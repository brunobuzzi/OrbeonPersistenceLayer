form-field-value
getAllGrids
	"The receiver answer an OrderedCollection with ALL Grids (including nested sections) where each element is a Dictionary.
	Each Dictionary represent a Grid Iteration, where the key is the field name and the value is the field value"
	| allGrids |

	allGrids := OrderedCollection new.

	self getAllSections do: [:eachSection | 
		eachSection gridsDo: [:eachGrid | allGrids addAll: eachGrid gridIterations].].

	^allGrids