metadata
getFormName

	^(xmlDocument xPath: '//metadata/form-name')
		ifEmpty: [OrbeonInvalidXMLException signal: '<form-name> is node missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]