distribution
getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler
	""
	| total |

	total := 0.

	definitionRegistry keysAndValuesDo: [:formName :registry | 
		total := total + (registry getInstancesQuantityFrom: startDate to: endDate satisfying: formConditionBlock onError: errorHandler)].

	^total