other
getOrCreateFormDefinition
	| anOrbeonApplication |

	anOrbeonApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'charts'.

	^anOrbeonApplication definitionNamed: 'charts-forms' ifNone: [self createFormDefinition].