other
getApplicationName

	^(xmlDocument xPath: '//metadata/application-name')
		ifEmpty: [OrbeonInvalidXMLException signal: 'Application node missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]