metadata
getTitle

	^(xmlDocument findElementNamed: self defaultOrbeonXpathVersion xfInstanceFormTitleXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].