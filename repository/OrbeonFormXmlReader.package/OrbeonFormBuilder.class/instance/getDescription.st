metadata
getDescription

	^(xmlDocument xPath: systemRoot dataFormatVersion xfInstanceFormDescriptionXpath)
		ifEmpty: [OrbeonInvalidXMLException signal: '<description> node is missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]