charts
getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := OrderPreservingDictionary new.
	applications do: [:each |  | definitionDistribution |
		definitionDistribution := each getInstancesCreationDistributionByMonthFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler.
		definitionDistribution keysAndValuesDo: [:key : value |
			(distribution includesKey: key) 
			ifTrue: [distribution at: key put: (distribution at: key) + value] 
			ifFalse: [distribution at: key put: value] 
		] 
	].
		
	^distribution