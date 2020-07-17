distribution
getInstancesQuantityFrom: startDate to: endDate
	""
	| total |

	total := 0.

	definitionsRegistry keysAndValuesDo: [:formName :registry | 
		total := total + (registry getInstancesQuantityFrom: startDate to: endDate)].

	^total