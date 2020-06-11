other
getAllDefinitionsNamed: aString ifNone: aBlock

	self hasVersions 
	ifTrue: [oldVersions, currentVersions] 
	ifFalse: [aBlock value]