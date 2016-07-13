other
getTitle

	^(xmlDocument xPath: '//metadata/title')
		ifEmpty: [OrbeonInvalidXMLException signal: 'Title node missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]