setUp
setUp
	| library |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'gs'.

	library := testRoot buildPublishedFormNamed: 'library'
									version: 1
									title: 'Library'
									withXml: self newDefinitionTemplate formDefinition_gs_library
									in: application.

	form := testRoot buildPublishedFormNamed: 'test-library' 
					version: 1
					title: 'Test Library' 
					withXml: self newDefinitionTemplate formDefinition_gs_test_library
					in: application.