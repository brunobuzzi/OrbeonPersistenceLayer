other
createFormStructureNoPermissions

	^testRoot 
			buildPublishedFormNamed: 'simple-registration'
			title: 'Simple Registration' 
			withXml: testRoot newDefinitionTemplate formDefinition_st_simple_registration 
			in: (testRoot getExistingApplicationOrCreateNewNamed: 'st')