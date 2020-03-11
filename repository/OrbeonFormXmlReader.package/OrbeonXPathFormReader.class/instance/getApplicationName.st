metadata
getApplicationName

	^(xmlDocument xPath: '//metadata/application-name')
		ifEmpty: [OrbeonInvalidXMLException signal: '<application-name> node is missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]