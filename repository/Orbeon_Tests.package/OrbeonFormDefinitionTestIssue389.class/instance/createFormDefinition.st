other
createFormDefinition

	^form := self createFormStructureFor: 'test-library' 
							version: 1 
							id: self defaultFormId 
							in: 'gs' 
							definitionTemplate: #formDefinition_issue389_v1 
							title: 'Issue 389' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.