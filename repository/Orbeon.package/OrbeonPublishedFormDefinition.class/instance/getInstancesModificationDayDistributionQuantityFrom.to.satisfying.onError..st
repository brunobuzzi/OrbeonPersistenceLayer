distribution
getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler

	^self getInstancesDayDistributionQuantityUsing: #modifiedTime from: startDate to: endDate satisfying: formConditionBlock onError: errorHandler