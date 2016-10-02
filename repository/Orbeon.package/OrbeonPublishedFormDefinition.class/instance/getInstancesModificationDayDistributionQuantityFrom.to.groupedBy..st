distribution
getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate groupedBy: anInteger
	| distribution numberOfDays dayInterval |

	numberOfDays := endDate asDays - startDate asDays.
	dayInterval := numberOfDays // anInteger.
	distribution := OrderPreservingDictionary new.

	((instances select: [:each | startDate <= each modifiedTime and: [each modifiedTime <= endDate]]) asSortedCollection: [:a :b | a modifiedTime <= b modifiedTime]) 
		do: [:each | | currentDate key |
			currentDate := each modifiedTime date.
			key := (currentDate asDays - startDate asDays) // anInteger.
			(distribution includesKey: key)
				ifFalse: [distribution at: key put: 1] 
				ifTrue: [distribution at: key ifAbsentPut: [1].
					distribution at: key put: ((distribution at: (key)) + 1)].	
		].

	^distribution