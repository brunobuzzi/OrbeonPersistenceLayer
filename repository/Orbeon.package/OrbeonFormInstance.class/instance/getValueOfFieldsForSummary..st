other
getValueOfFieldsForSummary: collectionOfFieldNames
	| summary |

	summary := OrderedCollection new.
	collectionOfFieldNames do: [:fieldName | | value convertedValue |
		value := self fieldValueAt: fieldName.
		(value isCollection and: [value isOctetString not])
		ifTrue: [
			(value size = 1) 
			ifFalse: [convertedValue := '| '.
				value do: [:each | convertedValue := convertedValue, (each isOctetString ifTrue: [each] ifFalse: [each printString]), ' | '].
				value := convertedValue.
			]
			ifTrue: [value := value at: 1]].
		summary add: value].

	^summary