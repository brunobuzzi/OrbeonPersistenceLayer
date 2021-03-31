metadata
getXmlAvailableNode

	^self getXmlAvailableNodeIfNone: [OrbeonInvalidXMLException signal: '<available> node is missing']