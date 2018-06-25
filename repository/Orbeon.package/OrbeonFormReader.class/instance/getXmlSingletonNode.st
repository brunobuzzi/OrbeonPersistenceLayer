metadata
getXmlSingletonNode

	^self getXmlSingletonNodeIfNone: [OrbeonInvalidXMLException signal: '<singleton> node is missing']