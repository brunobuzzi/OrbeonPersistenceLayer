setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'orbeon'.

	form := testRoot buildPublishedFormNamed: 'library' 
					version: 1
					title: 'Library' 
					withXml: testRoot newDefinitionTemplate formDefinition_orbeon_library
					in: application.