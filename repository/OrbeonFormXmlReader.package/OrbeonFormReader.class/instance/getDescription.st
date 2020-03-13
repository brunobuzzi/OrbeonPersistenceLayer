metadata
getDescription

	^(xmlDocument findElementNamed: self defaultOrbeonXpathVersion xfInstanceFormDescriptionXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].