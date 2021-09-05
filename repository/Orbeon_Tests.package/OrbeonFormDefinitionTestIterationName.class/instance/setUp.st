setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := testRoot buildPublishedFormNamed: 'test-section-interation-name' 
					version: 1
					title: 'Test Section Interation Name' 
					withXml: testRoot newDefinitionTemplate formDefinition_agesic_test_section_interaction_name
					in: application.