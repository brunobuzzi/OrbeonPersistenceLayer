other
createFormStructureV2: stringId

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	^self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_4
			name: 'test-all-types-4'
			version: 2
			id: stringId
			in: 'agesic' 
			title: 'Test'