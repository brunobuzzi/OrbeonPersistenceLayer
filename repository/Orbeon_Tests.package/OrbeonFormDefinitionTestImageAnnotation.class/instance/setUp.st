setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := self defaultPublishedFormDefinitionClass 
					buildDefinitionFrom: self newDefinitionTemplate formDefinition_agesic_test 
					name: 'test' 
					in: application 
					title: 'Test'