metadata
getTitle

	^(xmlDocument xPath: '//metadata/title')
		ifEmpty: [OrbeonInvalidXMLException signal: '<title> node is missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]