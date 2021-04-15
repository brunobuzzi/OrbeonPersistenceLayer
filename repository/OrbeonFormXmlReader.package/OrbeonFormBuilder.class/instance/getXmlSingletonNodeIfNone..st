metadata
getXmlSingletonNodeIfNone: aBlock

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion xfFormIsSingletonXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]