metadata
getDescription

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion xfInstanceFormDescriptionXpath)
		ifEmpty: [OrbeonInvalidXMLException signal: '<description> node is missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]