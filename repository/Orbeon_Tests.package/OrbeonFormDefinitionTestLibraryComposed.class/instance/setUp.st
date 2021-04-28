setUp
setUp


	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_orbeon_library 
			name: 'library' 
			in: 'orbeon' 
			title: 'Library'.

	self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library 
			name: 'library' 
			in: 'ue' 
			title: 'Library'.

	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library_composed_form 
						name: 'library-composed-form' 
						in: 'ue' 
						title: 'Test Section Library Composed Forms'.