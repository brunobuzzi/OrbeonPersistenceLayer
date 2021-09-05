other
testDoIt
	| definition form application id |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	id := UUID new asString.
	form := (OrbeonFormInstance newFor: definition withId: id)
					definition: definition;
					xmlString: testRoot newInstanceTemplate formInstance_agesic_energy_recursive;
					buildForm;
					yourself.

	self assert: (definition getInstanceWithId: id) notNil.

	apiOperation id: id.
	apiOperation doIt.

	self assert: (definition getInstanceWithId: id) isNil.