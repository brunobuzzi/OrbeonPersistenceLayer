other
tearDown
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.

	application removeDefinition: (application definitionNamed: 'issue-243' ifNone: []). 
	application unregisterDefinitionNamed: 'issue-243'.

	application removeFromCache