other
testDoIt
	| definition application |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	apiOperation xmlString: self newInstanceTemplate formInstance_agesic_energy_recursive.

	self assert: (definition getInstanceWithId: apiOperation id) isNil.
	apiOperation doIt.
	self assert: (definition getInstanceWithId: apiOperation id) notNil.

	self assert: (definition getInstanceWithId: apiOperation id) xmlString equals: apiOperation xmlString.