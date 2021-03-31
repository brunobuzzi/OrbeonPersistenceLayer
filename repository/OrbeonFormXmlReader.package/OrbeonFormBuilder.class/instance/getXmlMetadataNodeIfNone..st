metadata
getXmlMetadataNodeIfNone: aBlock

	^(xmlDocument xPath: self defaultOrbeonXpathVersion xfInstanceFormMetadataXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]