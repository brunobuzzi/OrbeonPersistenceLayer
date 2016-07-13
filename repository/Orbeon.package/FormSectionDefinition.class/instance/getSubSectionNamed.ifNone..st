Accessing
getSubSectionNamed: aString ifNone: aBlock

	^subSections detect: [:each | each name = aString] ifNone: aBlock