distribution
getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler

	^self getInstancesDayDistributionQuantityUsing: #createdTime from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler