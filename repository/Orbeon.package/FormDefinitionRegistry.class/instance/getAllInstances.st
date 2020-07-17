published definition
getAllInstances
	""
	| all |

	all := OrderedCollection new.

	self getAllVersions do: [:formDefinition | 
		formDefinition instancesDo: [:formInstance | all add: formInstance]].

	^all