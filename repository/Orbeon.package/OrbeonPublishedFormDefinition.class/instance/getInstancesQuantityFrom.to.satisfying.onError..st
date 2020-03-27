distribution
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler

	^(instances select: [:each | startDate <= createdTime and: [(createdTime <= endDate) and: [formConditionBlock asApplicationBlock value: each onError: errorHandler]]]) size