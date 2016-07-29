other
getFieldsNameSpace2
	"Answer a dictionary where the key is the field's name and the value is an integer that is the greatest size of the repeatable values.
	This is to reserve room for all fields values (including repeatable) in the Matrix"
	| fieldSpace |

	fieldSpace := OrderPreservingDictionary new.
	formsCollection do: [:eachForm |
		eachForm fieldDefinitionsByTabIndex do:[:fieldDef | | valueHolder |
			valueHolder := eachForm holderValueAt: fieldDef name.
			(fieldSpace includesKey: fieldDef name)
			ifTrue: [fieldSpace at: fieldDef name put: ((fieldSpace at: fieldDef name) max: valueHolder currentSize).]
			ifFalse: [fieldSpace at: fieldDef name put: valueHolder currentSize].		
		].
	].

	^fieldSpace