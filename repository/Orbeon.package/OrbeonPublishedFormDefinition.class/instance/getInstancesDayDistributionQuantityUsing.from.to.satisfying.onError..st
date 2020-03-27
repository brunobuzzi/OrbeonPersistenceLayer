distribution
getInstancesDayDistributionQuantityUsing: sortSelector from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution heatMapStartDate |

	distribution := OrderPreservingDictionary new.
	heatMapStartDate := (startDate dayOfWeek = 1) ifTrue: [startDate] ifFalse: [startDate subtractDays: (startDate dayOfWeek - 1)].

	(instances select: [:each | | value |
		value := each perform: sortSelector.
		startDate <= value  and: [(value <= endDate) and: [formConditionBlock asApplicationBlock value: each onError: errorHandler]]])
			do: [:each | | key value |
				value := each perform: sortSelector.
				key := OrderedCollection with: ((value date asDays - heatMapStartDate asDays) // 7).
				key add: (value date dayOfWeek - 1).
				(distribution includesKey: key asArray) 
					ifFalse: [distribution at: key asArray put: 1] 
					ifTrue: [distribution at: key asArray put:  ((distribution at: key asArray) + 1)]].

	^distribution