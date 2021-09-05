metadata
getXmlMetadataNodeIfNone: aBlock

	^(xmlDocument xPath: systemRoot dataFormatVersion xfInstanceFormMetadataXpath)
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]