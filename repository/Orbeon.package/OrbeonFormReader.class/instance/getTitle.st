other
getTitle

	^(xmlDocument findElementNamed: 'title')
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].