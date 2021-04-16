setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	self buildFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library 
			name: 'library' 
			in: 'ue' 
			title: 'Library'.

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon'. 

	self buildFormStructureFrom: self newDefinitionTemplate formDefinition_orbeon_library 
			name: 'library' 
			in: 'orbeon' 
			title: 'Library'.

	form := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library_composed_form_2
						name: 'library-composed-form2' 
						in: 'ue' 
						title: 'Test Section Library Composed Forms 2'.