setUp
setUp

	application := testRoot getExistingApplicationOrCreateNewNamed: 'orbeon'.

	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_orbeon_library 
						name: 'library' 
						in: 'orbeon' 
						title: 'Library'.