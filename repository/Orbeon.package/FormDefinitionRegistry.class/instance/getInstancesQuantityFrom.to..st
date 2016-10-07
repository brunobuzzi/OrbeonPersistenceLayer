published def instances
getInstancesQuantityFrom: startDate to: endDate

	^(oldVersions ,currentVersions) inject: 0 into:  [:sum :each | sum + (each getInstancesQuantityFrom: startDate to: endDate)]