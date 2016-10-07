distribution
getInstancesQuantityFrom: startDate to: endDate

	^(instances select: [:each | startDate <= createdTime and: [createdTime <= endDate]]) size