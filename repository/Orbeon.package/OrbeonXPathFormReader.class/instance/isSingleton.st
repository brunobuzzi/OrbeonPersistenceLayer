other
isSingleton
	"Answer whether or not the form definition is a Singleton form or not"

	^(xmlDocument xPath: '//metadata/singleton')
		ifEmpty: [false] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: [false] 
				ifFalse: [(collection first strings last = 'true')]]