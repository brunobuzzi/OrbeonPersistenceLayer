other
getFieldsNameSpace2
	"Answer a dictionary where the key is the field's name and the value is an integer that is the greatest size of the repeatable values.
	This is to reserve room for all fields values (including repeatable) in the Matrix"
	| fieldSpace |

	fieldSpace := Dictionary new.
	formsCollection do: [:eachForm |
		eachForm fieldsValues keysAndValuesDo: [:fieldName :valueHolder |
			(fieldSpace includesKey: fieldName)
			ifTrue: [fieldSpace at: fieldName put: ((fieldSpace at: fieldName) max: valueHolder currentSize).]
			ifFalse: [fieldSpace at: fieldName put: valueHolder currentSize].		
		].
	].

	^fieldSpace