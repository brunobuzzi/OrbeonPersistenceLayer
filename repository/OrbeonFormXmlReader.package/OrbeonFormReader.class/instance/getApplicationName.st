metadata
getApplicationName

	^(xmlDocument findElementNamed: 'application-name')
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].