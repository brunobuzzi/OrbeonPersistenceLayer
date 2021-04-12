setUp
setUp
	| definition |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application 
						definitionNamed: 'test-2' 
						ifNone: [self buildFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_2
											name: 'test-2'
											in: 'agesic'
											title: 'Test 2'].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_agesic_test_2 ;
					buildForm;
					yourself.