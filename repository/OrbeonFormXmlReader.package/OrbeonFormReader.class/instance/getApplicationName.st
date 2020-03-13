metadata
getApplicationName

	^(xmlDocument findElementNamed: self defaultOrbeonXpathVersion xfInstanceApplicationNameXpath)
		ifNotNil: [:value | value strings isEmpty ifTrue: [''] ifFalse: [value strings last]]
		ifNil: [''].