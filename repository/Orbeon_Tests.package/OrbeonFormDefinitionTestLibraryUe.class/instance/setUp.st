setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_ue_library_2 
						name: 'library' 
						in: 'ue' 
						title: 'Library'