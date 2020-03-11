other
getFieldsNameSpace
	| fieldSpace |

	fieldSpace := Dictionary new.
	formsCollection do: [:eachForm |
		eachForm getAllFields keysAndValuesDo: [:fieldName :valueCollection |
			(fieldSpace includesKey: fieldName)
			ifTrue: [fieldSpace at: fieldName put: ((fieldSpace at: fieldName) max: valueCollection size).]
			ifFalse: [fieldSpace at: fieldName put: valueCollection size].		
		].
	].

	^fieldSpace