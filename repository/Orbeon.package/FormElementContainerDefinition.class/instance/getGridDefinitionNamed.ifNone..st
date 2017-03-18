other
getGridDefinitionNamed: aString ifNone: aBlock

	^self gridDefinitions at: aString ifAbsent: aBlock