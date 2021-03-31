metadata
getTitle

	^(xmlDocument xPath: self defaultOrbeonXpathVersion xfInstanceFormTitleXpath)
		ifEmpty: [OrbeonInvalidXMLException signal: '<title> node is missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]