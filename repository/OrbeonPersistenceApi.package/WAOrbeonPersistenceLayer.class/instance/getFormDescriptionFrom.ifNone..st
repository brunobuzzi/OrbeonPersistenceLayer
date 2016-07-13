queries
getFormDescriptionFrom: xmlDocument ifNone: aBlock
	"The receiver get the form description from the xml document <xmlDocument> if none is found evaluate the zero argument block <aBlock>"

	^(xmlDocument findElementNamed: 'description')
		ifNotNil: [:value | value strings isEmpty ifTrue: aBlock ifFalse: [value strings last]]
		ifNil: aBlock.