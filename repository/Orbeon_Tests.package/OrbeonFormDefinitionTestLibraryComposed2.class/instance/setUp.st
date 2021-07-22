setUp
setUp

	testRoot getExistingApplicationOrCreateNewNamed: 'orbeon'. 

	self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_orbeon_library 
			name: 'library' 
			in: 'orbeon' 
			title: 'Library'.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue'.

	self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library 
			name: 'library' 
			in: 'ue' 
			title: 'Library'.

	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library_composed_form_2  
					savedXml: self newDefinitionTemplate formSavedDefinition_ue_library_composed_form_2
					name: 'library-composed-form2' 
					version: 1 
					id: UUID new asString 
					in: 'ue' 
					title: 'Test Section Library Composed Forms 2'.