distribution
getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock
	| distribution |

	distribution := OrderPreservingDictionary new.

	(instances select: [:each | | value |
		value := each perform: sortSelector.
		startDate <= value  and: [(value <= endDate) and: [formConditionBlock value: each]]])
			do: [:each | | key value |
				value := each perform: sortSelector.
				key := value date asDays - startDate asDays.
				(distribution includesKey: key) 
					ifFalse: [distribution at: key put: 1] 
					ifTrue: [distribution at: key put: ((distribution at: (key)) + 1)]].

	^distribution