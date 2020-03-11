metadata
getDescription

	^(xmlDocument findElementNamed: 'description')
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].