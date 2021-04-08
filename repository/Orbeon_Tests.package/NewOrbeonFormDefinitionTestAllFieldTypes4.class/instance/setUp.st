setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := OrbeonSavedFormDefinition 
					buildDefinitionFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_4 
					name: 'test' 
					in: application 
					title: 'Test'