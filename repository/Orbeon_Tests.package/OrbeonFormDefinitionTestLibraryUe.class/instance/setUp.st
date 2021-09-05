setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.

	form := testRoot buildPublishedFormNamed: 'library' 
					version: 1
					title: 'Library' 
					withXml: testRoot newDefinitionTemplate formDefinition_ue_library_2
					in: application.