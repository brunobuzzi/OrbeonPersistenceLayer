other
createFormStructureNoPermissions

	^testRoot 
			buildPublishedFormNamed: 'simple-registration'
			title: 'Simple Registration' 
			withXml: self newDefinitionTemplate formDefinition_st_simple_registration 
			in: (testRoot getExistingApplicationOrCreateNewNamed: 'st')