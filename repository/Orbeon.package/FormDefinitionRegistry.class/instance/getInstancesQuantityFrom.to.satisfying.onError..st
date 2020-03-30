distribution
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler

	^(oldVersions ,currentVersions) inject: 0 into:  [:sum :each | sum + (each getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler)]