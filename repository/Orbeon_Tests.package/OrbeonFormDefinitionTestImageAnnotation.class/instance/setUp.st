setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := testRoot 
					buildPublishedFormNamed: 'test' 
					title: 'Test' 
					withXml: self newDefinitionTemplate formDefinition_agesic_test 
					in: application.