form-field-value
getAllFields
	"The receiver answer a Dictionary with ALL fields (including nested sections) where the key is the field name and the value is the collection of fields value. 
	If collection size = 0 --> empty collection, 
	if the collection size = 1 --> simple field, 
	otherwise a is a field inside a repeat component"
	| allFields |

	allFields := Dictionary new.

	self getAllSections do: [:eachSection | 
		eachSection fields keysAndValuesDo: [:fieldName :fieldValue |
			(allFields includesKey: fieldName)
			ifTrue: [(allFields at: fieldName) add: fieldValue]
			ifFalse: [allFields at: fieldName put: (OrderedCollection with: fieldValue)]].
		eachSection grids do: [:eachGrid | 
			eachGrid gridIterations do: [:dictIteration | 
				dictIteration keysAndValuesDo: [:fieldName :fieldValue |
					(allFields includesKey: fieldName)
					ifTrue: [(allFields at: fieldName) add: fieldValue]
					ifFalse: [allFields at: fieldName put: (OrderedCollection with: fieldValue)]
					]]]].
	^allFields