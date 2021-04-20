other
createFormStructureNoPermissions

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st'.

	^self buildFormStructureFrom: self newDefinitionTemplate formDefinition_st_simple_registration
			name: 'simple-registration'
			in: 'st' 
			title: 'Simple Registration'