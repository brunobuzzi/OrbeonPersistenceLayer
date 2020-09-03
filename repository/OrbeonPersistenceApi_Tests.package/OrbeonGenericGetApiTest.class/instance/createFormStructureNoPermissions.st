other
createFormStructureNoPermissions

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st'.

	^self createFormStructureFor: 'simple-registration' 
			in: 'st' 
			definitionTemplate: #formDefinition_simple_registration 
			title: 'Test'
			xPathVersion: self getOrbeonXmlXpathFrom2017_2