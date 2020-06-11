published definition
getAllInstancesKeysOf: version
	"The receiver answer all keys of all form instances"
	| allKeys |

	allKeys := OrderedCollection new.
	self allVersionsDo: [:formDefinition | (formDefinition version = version) ifTrue: [formDefinition instancesDo: [:formInstance | allKeys add: formInstance id]]]. 

	^allKeys