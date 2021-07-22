other
testDoIt
	| definition form application id |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	self assert: (definition getInstanceWithId: id) isNil.

	id := UUID new asString.
	form := (OrbeonFormInstance newFor: definition withId: id)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_agesic_energy_recursive;
					buildForm;
					yourself.

	self assert: (definition getInstanceWithId: id) notNil.

	self assert: (definition getInstanceWithId: apiOperation id) isNil.
	apiOperation doIt.
	self assert: (definition getInstanceWithId: apiOperation id) notNil.
	self assert: definition instancesSize equals: 2.
	self assert: (definition getInstanceWithId: apiOperation id) xmlString equals: form xmlString