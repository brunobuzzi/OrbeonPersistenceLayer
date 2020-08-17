other
tearDown

	application removeDefinition: (application definitionNamed: 'issue-243' ifNone: []). 
	application unregisterDefinitionNamed: 'issue-243'.

	application removeFromCache