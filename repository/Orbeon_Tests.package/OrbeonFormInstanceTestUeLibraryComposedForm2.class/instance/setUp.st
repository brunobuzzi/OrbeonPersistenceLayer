setUp
setUp
	| definition |


	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.
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
							definitionNamed: 'library-composed-form2' 
							ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library_composed_form_2
											name: 'library-composed-form2'
											in: 'ue'
											title: 'Library Composed Form'].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_ue_library_composed_form_2;
					yourself.

	form buildForm