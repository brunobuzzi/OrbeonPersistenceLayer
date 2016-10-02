distribution
getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := OrderPreservingDictionary new.

	(instances select: [:each | startDate <= each createdTime and: [each createdTime <= endDate]])
	do: [:each | | key |
		key := each createdTime date asDays - startDate asDays.
		(distribution includesKey: key) 
			ifFalse: [distribution at: key put: 1] 
			ifTrue: [distribution at: key put: ((distribution at: (key)) + 1)]].

	^distribution