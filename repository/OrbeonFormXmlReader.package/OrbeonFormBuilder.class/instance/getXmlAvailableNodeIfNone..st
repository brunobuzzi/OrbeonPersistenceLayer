metadata
getXmlAvailableNodeIfNone: aBlock

	^(xmlDocument xPath: systemRoot dataFormatVersion xfInstanceFormAvailableXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]