other
testDoIt
	| definition form application id |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	self assert: (definition getInstanceWithId: id) isNil.

	id := UUID new asString.
	form := (OrbeonFormInstance newFor: definition withId: id)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_energy_survey_recursive;
					processXML;
					yourself.

	self assert: (definition getInstanceWithId: id) notNil.

	self assert: (definition getInstanceWithId: apiOperation id) isNil.
	apiOperation doIt.
	self assert: (definition getInstanceWithId: apiOperation id) notNil.
	self assert: definition instancesSize equals: 2.
	self assert: (definition getInstanceWithId: apiOperation id) xmlString equals: form xmlString