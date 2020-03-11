custom iteration name
getCustomIterationNameFor: sectionName bindName: sectionNameBindName
	"Answer the -custom iteration name- for the section bind element named <sectionNameBindName>"
	| bindNode iterationName |

	bindNode := (xmlDocument xPath: '//xf:bind[@id=''', sectionNameBindName, ''']/xf:bind') 
		ifEmpty: [^nil] 
		ifNotEmpty: [:collection | (collection size = 1) ifTrue: [collection last] ifFalse:[^nil]].

	iterationName := bindNode attributeAt: 'name'.
	
	^((sectionName, '-iteration') = iterationName) 
			ifFalse: [iterationName]
			ifTrue: [nil]