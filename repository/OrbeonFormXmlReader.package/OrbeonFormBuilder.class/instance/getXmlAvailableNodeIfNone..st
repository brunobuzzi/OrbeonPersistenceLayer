metadata
getXmlAvailableNodeIfNone: aBlock

	^(xmlDocument xPath: self defaultOrbeonXpathVersion xfInstanceFormAvailableXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]