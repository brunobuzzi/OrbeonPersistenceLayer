other
testDoIt
	| definition form application id |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	id := UUID new asString.
	form := (OrbeonFormInstance newFor: definition withId: id)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_energy_survey_recursive;
					processXML;
					yourself.

	self assert: (definition getInstanceWithId: id) notNil.

	apiOperation id: id.
	apiOperation doIt.

	self assert: (definition getInstanceWithId: id) isNil.