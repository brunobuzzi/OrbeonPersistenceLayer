other
setUp
	| definition application |

	self getOrbeonApplicationClass cache removeKey: 'agesic'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'test' ifNone: [self createFormStructure].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_test;
					processXMLSections;
					yourself.