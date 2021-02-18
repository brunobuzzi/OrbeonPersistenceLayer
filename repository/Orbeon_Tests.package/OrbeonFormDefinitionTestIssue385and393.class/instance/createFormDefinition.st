other
createFormDefinition

	^form := self createFormStructureFor: 'issue-385' 
							version: 1 
							id: self defaultFormId 
							in: 'gs' 
							definitionTemplate: #savedFormDefinition_issue385 
							title: 'Issue 385' 
							xPathVersion: self getOrbeonXmlXpathFrom2017_2.