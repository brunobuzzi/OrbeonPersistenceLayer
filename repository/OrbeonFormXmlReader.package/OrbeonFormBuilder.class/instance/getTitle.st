metadata
getTitle

	^(xmlDocument findElementNamed: self dataFormatVersion xfInstanceFormTitleXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].