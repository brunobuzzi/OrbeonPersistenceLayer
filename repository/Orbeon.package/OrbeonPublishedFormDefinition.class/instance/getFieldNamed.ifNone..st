other
getFieldNamed: aString ifNone: aBlock

	^self fieldDefinitions detect: [:each | each name = aString] ifNone: aBlock