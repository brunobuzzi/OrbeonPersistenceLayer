metadata
getXmlMetadataNodeIfNone: aBlock

	^(xmlDocument findElementNamed: 'metadata')
		ifNotNil: [:value | value]
		ifNil: aBlock.