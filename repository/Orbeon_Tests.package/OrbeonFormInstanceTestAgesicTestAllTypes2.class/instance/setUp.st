setUp
setUp
	| definition |
	super setUp.
	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'test-all-types-2'
				ifNone: 
					[testRoot 
						buildPublishedFormNamed: 'test-all-types-2'
						title: 'Test'
						withXml: testRoot  newDefinitionTemplate formDefinition_agesic_test_all_types_2
						in: application].
	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
				xmlString: testRoot  newInstanceTemplate formInstance_agesic_test_all_types_2;
				buildForm;
				yourself