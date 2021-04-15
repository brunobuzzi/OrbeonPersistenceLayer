metadata
getXmlMetadataNodeIfNone: aBlock

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion xfInstanceFormMetadataXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]