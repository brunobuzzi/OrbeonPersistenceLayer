metadata
getXmlSingletonNodeIfNone: aBlock

	^(xmlDocument xPath: '//metadata/singleton')
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]