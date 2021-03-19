other
createFormStructureCreatePermissions

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	^self createFormStructureFor: 'test-all-types-4' 
			in: 'agesic' 
			definitionTemplate: #formDefinition_example_5 
			title: 'Test'
			xPathVersion: self getOrbeonXmlXpathFrom2017_2