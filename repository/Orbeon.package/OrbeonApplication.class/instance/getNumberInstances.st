other
getNumberInstances
	""
	| total |

	total := 0.

	definitionRegistry keysAndValuesDo: [:formName :registry | 
		total := total + registry getAllInstancesSize].

	^total