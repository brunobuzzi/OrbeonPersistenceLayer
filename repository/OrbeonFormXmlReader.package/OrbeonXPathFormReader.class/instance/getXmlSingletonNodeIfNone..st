metadata
getXmlSingletonNodeIfNone: aBlock

	^(xmlDocument xPath: self defaultOrbeonXpathVersion xfFormIsSingletonXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]