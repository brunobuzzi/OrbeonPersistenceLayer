metadata
getFormName

	^(xmlDocument xPath: systemRoot dataFormatVersion xfInstanceFormNameXpath)
		ifEmpty: [OrbeonInvalidXMLException signal: '<form-name> is node missing'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [''] 
				ifFalse: [collection first strings last]]