other
testDoIt
	| definition form application id |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	id := UUID new asString.
	form := (OrbeonFormInstance newFor: definition withId: id)
					definition: definition;
					draft: 'Y';
					xmlString: self newInstanceTemplate formInstance_agesic_energy_recursive;
					buildFormSections;
					yourself.

	definition addDraft: form.

	self assert: (definition getDraftWithId: id) notNil.

	apiOperation id: id.
	apiOperation doIt.

	self assert: (definition getDraftWithId: id) isNil.