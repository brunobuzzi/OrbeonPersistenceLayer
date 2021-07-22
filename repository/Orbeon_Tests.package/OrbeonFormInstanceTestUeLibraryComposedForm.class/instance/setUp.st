setUp
setUp
	| definition |


	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.
	application definitionNamed: 'library' 
						ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library
											name: 'library'
											in: 'ue'
											title: 'Library'].

	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') 
		definitionNamed: 'library' 
		ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_orbeon_library
											name: 'library'
											in: 'orbeon'
											title: 'Library'].

	definition := application 
							definitionNamed: 'library-composed-form' 
							ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library_composed_form
											savedXml: self newDefinitionTemplate formSavedDefinition_ue_library_composed_form
											name: 'library-composed-form'
											version: 1
											id: UUID new asString 
											in: 'ue'
											title: 'Library Composed Form'].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_ue_library_composed_form;
					yourself.

	form buildForm