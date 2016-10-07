other
getInstancesQuantityFrom: startDate to: endDate
	""
	| total |

	total := 0.

	definitionRegistry keysAndValuesDo: [:formName :registry | 
		total := total + (registry getInstancesQuantityFrom: startDate to: endDate)].

	^total