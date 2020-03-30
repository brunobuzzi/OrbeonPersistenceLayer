distribution
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := Dictionary new.
	(self cache select: [:each | each class == self]) do: [:each | 
		distribution at: each applicationName put: (each getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler).
	].
		
	^distribution