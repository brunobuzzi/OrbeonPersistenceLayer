metadata
getFormName

	^(xmlDocument findElementNamed: 'form-name')
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].