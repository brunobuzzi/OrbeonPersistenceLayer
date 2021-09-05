other
createFormStructureCreatePermissions

	^testRoot 
			buildPublishedFormNamed: 'test-all-types-4' 
			title: 'Test' 
			withXml: testRoot newDefinitionTemplate formDefinition_agesic_test_all_types_4 
			in: (testRoot getExistingApplicationOrCreateNewNamed: 'agesic')