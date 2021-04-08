setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := OrbeonSavedFormDefinition 
					buildDefinitionFrom: self newDefinitionTemplate formDefinition_agesic_test 
					name: 'test' 
					in: application 
					title: 'Test'