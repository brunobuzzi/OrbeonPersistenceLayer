other
getDescription

	^(xmlDocument xPath: '//metadata/description')
		ifEmpty: [OrbeonInvalidXMLException signal: 'Description node missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]