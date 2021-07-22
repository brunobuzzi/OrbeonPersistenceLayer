setUp
setUp

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := self defaultPublishedFormDefinitionClass 
					buildDefinitionFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_4 
					name: 'test' 
					in: application 
					title: 'Test'