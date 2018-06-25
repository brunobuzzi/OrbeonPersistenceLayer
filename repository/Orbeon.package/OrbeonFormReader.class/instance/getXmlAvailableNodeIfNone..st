metadata
getXmlAvailableNodeIfNone: aBlock

	^(xmlDocument findElementNamed: 'available')
		ifNotNil: [:value | value]
		ifNil: aBlock.