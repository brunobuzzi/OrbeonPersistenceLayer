metadata
isSingleton
	"Answer whether or not the form definition is a Singleton form or not"

	^(xmlDocument findElementNamed: 'singleton')
		ifNotNil: [:value | value strings isEmpty ifTrue: [false] ifFalse: [(value strings last) = 'true']]
		ifNil: [false].