other
createRepeatableFormStructure

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	^self createFormStructureFor: 'manual-form' 
			in: 'agesic' 
			definitionTemplate: #formDefinition_issue369_v1 
			title: 'Manual Form'
			xPathVersion: self getOrbeonXmlXpathFrom2017_2