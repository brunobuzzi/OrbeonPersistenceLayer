setUp
setUp
	| definition |

	super setUp.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	definition := application 
						definitionNamed: 'test-all-types-2' 
						ifNone: [self buildFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_2
											name: 'test-all-types-2'
											in: 'agesic'
											title: 'Test'].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					xmlString: self newInstanceTemplate formInstance_agesic_test_all_types_2;
					buildForm;
					yourself