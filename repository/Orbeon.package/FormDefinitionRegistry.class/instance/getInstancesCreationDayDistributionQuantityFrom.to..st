distribution
getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := Dictionary new.
	self getAllVersion do: [:each |  | definitionDistribution |
		definitionDistribution := each getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate.
		definitionDistribution keysAndValuesDo: [:key : value |
			(distribution includesKey: key) 
			ifTrue: [distribution at: key put: (distribution at: key) + value] 
			ifFalse: [distribution at: key put: value] 
		] 
	].
		
	^distribution