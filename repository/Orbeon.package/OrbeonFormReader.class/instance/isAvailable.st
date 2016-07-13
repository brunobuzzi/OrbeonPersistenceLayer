other
isAvailable
	"Answer whether or not the form definition is published or not"

	^(xmlDocument findElementNamed: 'available')
		ifNotNil: [:value | value strings isEmpty ifTrue: [false] ifFalse: [(value strings last) = 'true']]
		ifNil: [false].