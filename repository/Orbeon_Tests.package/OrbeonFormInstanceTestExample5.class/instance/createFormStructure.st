other
createFormStructure

	^self createFormStructureFor: 'test-section-interation-name' 
			in: 'agesic' 
			definitionTemplate: #formDefinition_custom_iteration 
			title: 'Test Section Interation Name'
			xPathVersion: self getOrbeonXmlXpathUpto2017_1