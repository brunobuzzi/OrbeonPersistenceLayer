distribution
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock

	^(instances select: [:each | startDate <= createdTime and: [(createdTime <= endDate) and: [formConditionBlock value: each parentObject]]]) size