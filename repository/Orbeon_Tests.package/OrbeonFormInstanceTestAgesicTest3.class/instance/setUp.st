setUp
setUp
	| definition |
	super setUp.
	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'test-3'
				ifNone: 
					[testRoot 
						buildPublishedFormNamed: 'test-3'
						title: 'Test 3'
						withXml: self newDefinitionTemplate formDefinition_agesic_test_3
						in: application].
	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
				definition: definition;
				xmlString: self newInstanceTemplate formInstance_agesic_test_3;
				buildForm;
				yourself