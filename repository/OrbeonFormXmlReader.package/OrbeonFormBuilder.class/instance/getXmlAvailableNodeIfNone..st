metadata
getXmlAvailableNodeIfNone: aBlock

	^(xmlDocument findElementNamed: self dataFormatVersion xfInstanceFormAvailableXpath)
		ifNotNil: [:value | value]
		ifNil: aBlock.