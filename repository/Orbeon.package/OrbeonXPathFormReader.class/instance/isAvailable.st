other
isAvailable
	"Answer whether or not the form definition is published or not"

	^(xmlDocument xPath: '//metadata/available')
		ifEmpty: [false] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [false] 
				ifFalse: [(collection first strings last = 'true')]]