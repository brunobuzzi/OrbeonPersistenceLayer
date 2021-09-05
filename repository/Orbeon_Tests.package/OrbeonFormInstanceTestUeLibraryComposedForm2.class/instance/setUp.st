setUp
setUp
	| definition orbeon |

	super setUp. 

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.
	orbeon := testRoot getExistingApplicationOrCreateNewNamed: 'orbeon'.
	application definitionNamed: 'library' 
						ifNone: [testRoot 
												buildPublishedFormNamed: 'library' 
												title: 'Library' 
												withXml: testRoot newDefinitionTemplate formDefinition_ue_library 
												in: application].

	orbeon
		definitionNamed: 'library' 
		ifNone: [testRoot 
							buildPublishedFormNamed: 'library' 
							title: 'Library' 
							withXml: testRoot newDefinitionTemplate formDefinition_orbeon_library 
							in: orbeon].

	definition := application 
							definitionNamed: 'library-composed-form2' 
							ifNone: [testRoot buildPublishedFormNamed: 'library-composed-form2' id: UUID new asString 
														version: 1 
														title: 'Library Composed Form 2' 
														publishedXml: testRoot newDefinitionTemplate formDefinition_ue_library_composed_form_2
														savedXml: testRoot newDefinitionTemplate formSavedDefinition_ue_library_composed_form_2 
														in: application.].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: testRoot newInstanceTemplate formInstance_ue_library_composed_form_2;
					yourself.

	form buildForm