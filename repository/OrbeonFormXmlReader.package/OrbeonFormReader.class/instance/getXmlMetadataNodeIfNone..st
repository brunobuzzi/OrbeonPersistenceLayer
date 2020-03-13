metadata
getXmlMetadataNodeIfNone: aBlock

	^(xmlDocument findElementNamed: self defaultOrbeonXpathVersion xfInstanceFormMetadataXpath)
		ifNotNil: [:value | value]
		ifNil: aBlock.