setUp
setUp
	| definition |
	super setUp. 

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'test-section-interation-name'
				ifNone: 
					[testRoot 
						buildPublishedFormNamed: 'test-section-interation-name'
						title: 'Energy Recursive'
						withXml: self newDefinitionTemplate 
								formDefinition_agesic_test_section_interaction_name
						in: application].
	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
				definition: definition;
				xmlString: self newInstanceTemplate 
							formInstance_agesic_test_section_interaction_name;
				buildForm;
				yourself