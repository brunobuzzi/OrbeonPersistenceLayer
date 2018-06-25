metadata
getXmlAvailableNodeIfNone: aBlock

	^(xmlDocument xPath: '//metadata/available')
		ifEmpty: aBlock 
		ifNotEmpty: [:collection | collection first]