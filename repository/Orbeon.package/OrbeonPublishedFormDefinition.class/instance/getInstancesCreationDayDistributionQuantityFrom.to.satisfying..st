distribution
getInstancesCreationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock

	^self getInstancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: formConditionBlock