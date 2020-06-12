sanity checks
checkDefinitionsNotNilFor: anOrbeonPublishedFormDefinition

	anOrbeonPublishedFormDefinition definition notNil 
	ifFalse: [OrbeonSanityCheckException signal: 'The <definition> of <anOrbeonPublishedFormDefinition> can not be nil']