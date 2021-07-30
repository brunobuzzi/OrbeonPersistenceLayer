setUp
createFormStructure_v1
	^testRoot 
		buildPublishedFormNamed: 'issue-243'
		version: 1
		title: 'Issue 243'
		withXml: self newDefinitionTemplate formDefinition_ue_test_issue_243_v1
		in: (testRoot getExistingOrbeonApplicationOrCreateNewNamed: 'ue-test')