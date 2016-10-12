distribution
getQuantityDistributionForFieldNamed: fieldName from: startDate to: endDate
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| distributionValue |

	distributionValue := OrderPreservingDictionary new.

	((self fieldInstancesOf: fieldName) select: [:each | startDate <= each parentObject createdTime and: (each parentObject createdTime <= endDate)]) 
		do: [:fieldInst |  | fieldValue count |
			fieldValue := (fieldInst value class = String) ifTrue: [fieldInst value] ifFalse: [fieldInst value printString] . 
			(distributionValue includesKey: fieldValue) ifFalse: [distributionValue at: fieldValue put: 0].
			count := (distributionValue at: fieldValue) + 1.
			distributionValue at: fieldValue put: count.
		].

	^distributionValue