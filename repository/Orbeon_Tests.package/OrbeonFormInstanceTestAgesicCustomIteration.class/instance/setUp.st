setUp
setUp
	| definition |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application 
						definitionNamed: 'test-section-interation-name' 
						ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_test_section_interaction_name
											name: 'test-section-interation-name'
											in: 'agesic'
											title: 'Energy Recursive'].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_agesic_test_section_interaction_name ;
					buildForm;
					yourself.