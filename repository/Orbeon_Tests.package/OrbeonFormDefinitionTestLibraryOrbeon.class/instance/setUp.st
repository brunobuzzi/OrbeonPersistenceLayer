setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon'.

	form := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_orbeon_library 
						name: 'library' 
						in: 'orbeon' 
						title: 'Library'.