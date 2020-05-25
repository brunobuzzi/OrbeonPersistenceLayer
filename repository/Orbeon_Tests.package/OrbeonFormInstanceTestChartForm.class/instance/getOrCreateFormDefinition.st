other
getOrCreateFormDefinition
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'charts'.

	^application definitionNamed: 'charts-forms' ifNone: [self createFormDefinition].