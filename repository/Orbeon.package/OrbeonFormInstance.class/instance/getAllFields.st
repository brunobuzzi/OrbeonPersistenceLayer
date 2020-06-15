form-field-value
getAllFields
	"The receiver answer a Dictionary with ALL fields (including nested sections) where the key is the field name and the value is the collection of fields value. 
	If collection size = 0 --> empty collection, 
	if the collection size = 1 --> simple field, 
	otherwise a is a field inside a repeat component"
	| allFields |

	allFields := Dictionary new.

	self getAllSections do: [:eachSection | 
		eachSection fieldsKeysAndValuesDo: [:fieldName :fieldValue |
			(allFields includesKey: fieldName)
			ifTrue: [(allFields at: fieldName) add: fieldValue]
			ifFalse: [allFields at: fieldName put: (OrderedCollection with: fieldValue)]].
		eachSection gridsDo: [:eachGrid | 
			eachGrid gridIterationsDo: [:dictIteration | 
				dictIteration keysAndValuesDo: [:fieldName :fieldValue |
					(allFields includesKey: fieldName)
					ifTrue: [(allFields at: fieldName) add: fieldValue]
					ifFalse: [allFields at: fieldName put: (OrderedCollection with: fieldValue)]
					]]]].
	^allFields