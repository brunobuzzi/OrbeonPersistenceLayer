metadata
getXmlSingletonNodeIfNone: aBlock

	^(xmlDocument findElementNamed: self dataFormatVersion xfFormIsSingletonXpath)
		ifNotNil: [:value | value]
		ifNil: aBlock.