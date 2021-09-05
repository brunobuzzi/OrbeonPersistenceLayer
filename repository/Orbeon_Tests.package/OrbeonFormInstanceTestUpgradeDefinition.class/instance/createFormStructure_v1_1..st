tests
createFormStructure_v1_1: uuid 
	^testRoot 
		buildPublishedFormNamed: 'issue-243'
		id: uuid
		version: 1
		title: 'Issue 243'
		withXml: testRoot newDefinitionTemplate formDefinition_ue_test_issue_243_v1_1
		in: (testRoot getExistingOrbeonApplicationOrCreateNewNamed: 'ue-test')