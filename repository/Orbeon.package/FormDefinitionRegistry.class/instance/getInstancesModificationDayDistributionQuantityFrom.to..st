distribution
getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate

	^self getInstancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: [:each | true]