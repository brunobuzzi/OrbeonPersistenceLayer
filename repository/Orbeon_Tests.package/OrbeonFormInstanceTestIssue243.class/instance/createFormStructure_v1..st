other
createFormStructure_v1: formId

	^self createFormStructureFor: 'issue-243' 
			version: 1
			id: formId
			in: 'ue-test' 
			definitionTemplate: #formDefinition_issue243_v1 
			title: 'Issue 243'
			xPathVersion: self getOrbeonXmlXpathFrom2017_2