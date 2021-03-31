metadata
getApplicationName

	^(xmlDocument findElementNamed: self dataFormatVersion xfInstanceApplicationNameXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].