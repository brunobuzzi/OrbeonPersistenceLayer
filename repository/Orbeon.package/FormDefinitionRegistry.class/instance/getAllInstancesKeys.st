published definition
getAllInstancesKeys
	"The receiver answer all keys of all form instances"
	| allKeys |

	allKeys := OrderedCollection new.

	self getAllVersion do: [:formDefinition | 
		formDefinition instancesDo: [:formInstance | allKeys add: formInstance id]].

	^allKeys