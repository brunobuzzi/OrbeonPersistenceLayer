published definition
getAllInstancesKeys
	"The receiver answer all keys of all form instances"
	| allKeys |

	allKeys := OrderedCollection new.

	self getAllVersions do: [:formDefinition | 
		formDefinition instancesDo: [:formInstance | allKeys add: formInstance id]].

	^allKeys