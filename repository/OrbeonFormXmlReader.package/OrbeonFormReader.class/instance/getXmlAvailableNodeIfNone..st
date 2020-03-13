metadata
getXmlAvailableNodeIfNone: aBlock

	^(xmlDocument findElementNamed: self defaultOrbeonXpathVersion xfInstanceFormAvailableXpath)
		ifNotNil: [:value | value]
		ifNil: aBlock.