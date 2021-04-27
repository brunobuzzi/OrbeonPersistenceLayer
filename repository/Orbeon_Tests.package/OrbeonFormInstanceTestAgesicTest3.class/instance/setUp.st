setUp
setUp
	| definition |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application 
						definitionNamed: 'test-3' 
						ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_test_3
											name: 'test-3'
											in: 'agesic'
											title: 'Test 3'].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_agesic_test_3 ;
					buildForm;
					yourself.