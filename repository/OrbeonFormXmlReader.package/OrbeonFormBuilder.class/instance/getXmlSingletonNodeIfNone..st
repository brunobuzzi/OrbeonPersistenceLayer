metadata
getXmlSingletonNodeIfNone: aBlock

	^(xmlDocument xPath: systemRoot dataFormatVersion xfFormIsSingletonXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]