distribution by fields
getFieldEvolutionOf: fieldName from: startDate to: endDate satisfying: conditionBlock onError: errorHandler
	| distribution fieldCollection |

	distribution :=  OrderPreservingDictionary new.
	fieldCollection := fieldInstances at: fieldName ifAbsent: [^distribution].

	((fieldCollection select: [:each | (startDate <= each parentObject modifiedTime date) and: [each parentObject modifiedTime date <= endDate and: [conditionBlock value: each parentObject]]]) 
	asSortedCollection: [:a :b | a parentObject modifiedTime <= b parentObject modifiedTime])
		do: [:fieldInstance |  | key currentValue |
			key := fieldInstance parentObject modifiedTime date printString.
			currentValue := distribution at: key ifAbsent: [0].
			distribution at: key put: (currentValue + fieldInstance value)
		].

	^distribution