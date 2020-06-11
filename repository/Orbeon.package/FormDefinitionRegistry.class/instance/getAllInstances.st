published definition
getAllInstances
	""
	| all |

	all := OrderedCollection new.

	self getAllVersion do: [:formDefinition | 
		formDefinition instancesDo: [:formInstance | all add: formInstance]].

	^all