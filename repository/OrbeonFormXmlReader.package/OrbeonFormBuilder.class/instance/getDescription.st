metadata
getDescription

	^(xmlDocument findElementNamed: self dataFormatVersion xfInstanceFormDescriptionXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].