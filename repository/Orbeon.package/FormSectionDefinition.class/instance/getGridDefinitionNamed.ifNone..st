other
getGridDefinitionNamed: aString ifNone: aBlock

	^gridDefinitions at: aString ifAbsent: aBlock