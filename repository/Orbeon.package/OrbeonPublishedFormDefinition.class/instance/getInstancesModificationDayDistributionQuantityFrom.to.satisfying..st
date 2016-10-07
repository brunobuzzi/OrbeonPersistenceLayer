distribution
getInstancesModificationDayDistributionQuantityFrom: startDate to: endDate satisfying: formConditionBlock

	^self getInstancesDayDistributionQuantityUsing: #modifiedTime from: startDate to: endDate satisfying: formConditionBlock