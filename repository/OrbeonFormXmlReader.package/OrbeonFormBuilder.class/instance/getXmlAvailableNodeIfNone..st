metadata
getXmlAvailableNodeIfNone: aBlock

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion xfInstanceFormAvailableXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]