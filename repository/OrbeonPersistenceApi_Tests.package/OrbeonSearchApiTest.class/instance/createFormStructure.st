other
createFormStructure

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	^self buildFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_4
			name: 'test-all-types-4'
			in: 'agesic' 
			title: 'Test'