charts
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	| distribution |

	distribution := Dictionary new.
	applications do: [:each | 
		distribution at: each applicationName put: (each getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler).
	].
		
	^distribution