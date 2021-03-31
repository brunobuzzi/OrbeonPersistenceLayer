metadata
getXmlMetadataNodeIfNone: aBlock

	^(xmlDocument findElementNamed: self dataFormatVersion xfInstanceFormMetadataXpath)
		ifNotNil: [:value | value]
		ifNil: aBlock.