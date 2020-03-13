metadata
getFormName

	^(xmlDocument findElementNamed: self defaultOrbeonXpathVersion xfInstanceFormNameXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].