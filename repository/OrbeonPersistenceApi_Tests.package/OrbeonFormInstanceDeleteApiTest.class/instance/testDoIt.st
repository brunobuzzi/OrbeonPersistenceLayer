other
testDoIt
	| definition form application id |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	id := UUID new asString.
	form := (OrbeonFormInstance newFor: definition withId: id)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_agesic_energy_recursive;
					processXML;
					yourself.

	self assert: (definition getInstanceWithId: id) notNil.

	apiOperation id: id.
	apiOperation doIt.

	self assert: (definition getInstanceWithId: id) isNil.