metadata
getXmlSingletonNodeIfNone: aBlock

	^(xmlDocument findElementNamed: 'singleton')
		ifNotNil: [:value | value]
		ifNil: aBlock.