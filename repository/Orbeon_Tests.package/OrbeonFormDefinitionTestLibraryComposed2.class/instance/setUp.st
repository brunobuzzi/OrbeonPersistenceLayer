setUp
setUp
	| orbeon |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.
	orbeon := testRoot getExistingApplicationOrCreateNewNamed: 'orbeon'. 

	testRoot buildPublishedFormNamed: 'library' 
					version: 1
					title: 'Library' 
					withXml: self newDefinitionTemplate formDefinition_orbeon_library
					in: orbeon.

	testRoot buildPublishedFormNamed: 'library' 
					version: 1
					title: 'Library' 
					withXml: self newDefinitionTemplate formDefinition_ue_library
					in: application.

	form := testRoot buildPublishedFormNamed: 'library-composed-form2' 
					id: UUID new asString
					version: 1
					title: 'Test Section Library Composed Forms 2' 
					publishedXml: self newDefinitionTemplate formDefinition_ue_library_composed_form_2
					savedXml: self newDefinitionTemplate formSavedDefinition_ue_library_composed_form_2
					in: application.