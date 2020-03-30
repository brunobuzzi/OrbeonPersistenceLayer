distribution
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock

	^(instances select: [:each | startDate <= each createdTime and: [(each createdTime <= endDate) and: [formConditionBlock value: each]]]) size