metadata
getApplicationName

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion xfInstanceApplicationNameXpath)
		ifEmpty: [OrbeonInvalidXMLException signal: '<application-name> node is missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]