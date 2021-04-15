setUp
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application removeDefinition: (application definitionNamed: 'issue-243' ifNone: []). 
	application unregisterDefinitionNamed: 'issue-243'.

	application removeFromCache