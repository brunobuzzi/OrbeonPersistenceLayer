setUp
setUp
	| orbeon |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.
	orbeon := testRoot getExistingApplicationOrCreateNewNamed: 'orbeon'.

	testRoot buildPublishedFormNamed: 'library' 
					version: 1
					title: 'Library' 
					withXml: testRoot newDefinitionTemplate formDefinition_orbeon_library
					in: orbeon.

	testRoot buildPublishedFormNamed: 'library' 
					version: 1
					title: 'Library' 
					withXml: testRoot newDefinitionTemplate formDefinition_ue_library
					in: application.

	form := testRoot buildPublishedFormNamed: 'library-composed-form' 
					id: UUID new asString
					version: 1
					title: 'Test Section Library Composed Forms' 
					publishedXml: testRoot newDefinitionTemplate formDefinition_ue_library_composed_form
					savedXml: testRoot newDefinitionTemplate formSavedDefinition_ue_library_composed_form
					in: application.