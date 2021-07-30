setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.

	form := testRoot buildPublishedFormNamed: 'library' 
					version: 1
					title: 'Library' 
					withXml: self newDefinitionTemplate formDefinition_ue_library_2
					in: application.