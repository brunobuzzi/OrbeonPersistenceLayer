setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := testRoot 
					buildPublishedFormNamed: 'test' 
					title: 'Test' 
					withXml: testRoot newDefinitionTemplate formDefinition_agesic_test 
					in: application.