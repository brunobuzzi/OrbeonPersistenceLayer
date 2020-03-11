metadata
getXmlMetadataNodeIfNone: aBlock

	^(xmlDocument xPath: '//metadata')
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]