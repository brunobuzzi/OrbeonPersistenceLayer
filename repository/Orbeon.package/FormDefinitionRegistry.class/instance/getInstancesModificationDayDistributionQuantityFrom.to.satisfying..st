distribution
getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock

	^self getInstancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: formConditionBlock