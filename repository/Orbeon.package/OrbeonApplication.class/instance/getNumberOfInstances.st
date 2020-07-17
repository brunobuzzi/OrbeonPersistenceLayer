other
getNumberOfInstances
	""
	| total |

	total := 0.

	definitionsRegistry keysAndValuesDo: [:formName :registry | 
		total := total + registry getAllInstancesSize].

	^total