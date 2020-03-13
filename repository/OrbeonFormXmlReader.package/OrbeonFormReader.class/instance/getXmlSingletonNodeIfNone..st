metadata
getXmlSingletonNodeIfNone: aBlock

	^(xmlDocument findElementNamed: self defaultOrbeonXpathVersion xfFormIsSingletonXpath)
		ifNotNil: [:value | value]
		ifNil: aBlock.