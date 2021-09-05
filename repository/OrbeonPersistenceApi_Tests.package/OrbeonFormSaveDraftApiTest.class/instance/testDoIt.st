other
testDoIt
	| definition application |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	apiOperation xmlString: testRoot newInstanceTemplate formInstance_agesic_energy_recursive.

	self assert: (definition getDraftWithId: apiOperation id) isNil.
	apiOperation doIt.
	self assert: (definition getDraftWithId: apiOperation id) notNil.

	self assert: (definition getDraftWithId: apiOperation id) xmlString equals: apiOperation xmlString.