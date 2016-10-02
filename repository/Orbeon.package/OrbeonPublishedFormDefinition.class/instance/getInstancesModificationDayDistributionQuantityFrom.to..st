distribution
getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := OrderPreservingDictionary new.

	(instances select: [:each | startDate <= each modifiedTime and: [each modifiedTime <= endDate]])
	do: [:each | | key |
		key := each modifiedTime date asDays - startDate asDays.
		(distribution includesKey: key) 
			ifFalse: [distribution at: key put: 1] 
			ifTrue: [distribution at: key put: ((distribution at: (key)) + 1)]].

	^distribution