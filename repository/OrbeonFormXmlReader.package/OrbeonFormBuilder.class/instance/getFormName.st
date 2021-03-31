metadata
getFormName

	^(xmlDocument findElementNamed: self dataFormatVersion xfInstanceFormNameXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].