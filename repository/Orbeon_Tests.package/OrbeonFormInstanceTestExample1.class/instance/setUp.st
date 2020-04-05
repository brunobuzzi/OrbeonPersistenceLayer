other
setUp
	| definition application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'test-all-types-2' ifNone: [self createFormStructure].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate formDefinition_all_types_2;
					processXMLSections;
					yourself.