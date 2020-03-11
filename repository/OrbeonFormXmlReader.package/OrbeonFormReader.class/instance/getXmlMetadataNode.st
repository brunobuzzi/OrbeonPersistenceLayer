metadata
getXmlMetadataNode

	^self getXmlMetadataNodeIfNone: [OrbeonInvalidXMLException signal: '<metadata> node is missing']