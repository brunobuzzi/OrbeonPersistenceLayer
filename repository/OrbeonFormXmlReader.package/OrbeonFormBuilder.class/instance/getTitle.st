metadata
getTitle

	^(xmlDocument xPath: systemRoot dataFormatVersion xfInstanceFormTitleXpath)
		ifEmpty: [OrbeonInvalidXMLException signal: '<title> node is missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]