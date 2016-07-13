other
getFormName

	^(xmlDocument xPath: '//metadata/form-name')
		ifEmpty: [OrbeonInvalidXMLException signal: 'Form-Name node missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]