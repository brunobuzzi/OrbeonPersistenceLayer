setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := self defaultSavedFormDefinitionClass 
					buildDefinitionFrom: self newDefinitionTemplate formDefinition_agesic_test_section_interaction_name
					name: 'test-section-interation-name' 
					in: application 
					title: 'Test Section Interation Name'