setUp
setUp

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := self defaultPublishedFormDefinitionClass 
					buildDefinitionFrom: self newDefinitionTemplate formDefinition_agesic_test_section_interaction_name
					name: 'test-section-interation-name' 
					in: application 
					title: 'Test Section Interation Name'