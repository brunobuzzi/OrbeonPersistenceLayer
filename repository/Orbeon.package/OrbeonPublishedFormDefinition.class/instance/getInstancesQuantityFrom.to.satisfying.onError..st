distribution
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler

	^(instances select: [:each | startDate <= each createdTime and: [(each createdTime <= endDate) and: [formConditionBlock asApplicationBlock value: each onError: errorHandler]]]) size