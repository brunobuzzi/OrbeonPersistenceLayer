setUp
setUp
	| definition |
	super setUp.
	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'test-2'
				ifNone: 
					[testRoot 
						buildPublishedFormNamed: 'test-2'
						title: 'Test 2'
						withXml: self newDefinitionTemplate formDefinition_agesic_test_2
						in: application].
	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
				definition: definition;
				xmlString: self newInstanceTemplate formInstance_agesic_test_2;
				buildForm;
				yourself