other
createFormStructureV2: stringId

	^testRoot 
			buildPublishedFormNamed: 'test-all-types-4' 
			id: stringId
			version: 2
			title: 'Test' 
			withXml: self newDefinitionTemplate formDefinition_agesic_test_all_types_4 
			in: (testRoot getExistingApplicationOrCreateNewNamed: 'agesic')