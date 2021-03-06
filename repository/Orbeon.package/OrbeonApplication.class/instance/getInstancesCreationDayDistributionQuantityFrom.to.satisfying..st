distribution
getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock
	| distribution |

	distribution := Dictionary new.
	self getAllDefinitions do: [:each |  | definitionDistribution |
		definitionDistribution := each getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock.
		definitionDistribution keysAndValuesDo: [:key : value |
			(distribution includesKey: key) 
			ifTrue: [distribution at: key put: (distribution at: key) + value] 
			ifFalse: [distribution at: key put: value] 
		] 
	].
		
	^distribution