other
createFormStructureNoPermissions

	testRoot getExistingApplicationOrCreateNewNamed: 'st'.

	^self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_st_simple_registration
			name: 'simple-registration'
			in: 'st' 
			title: 'Simple Registration'