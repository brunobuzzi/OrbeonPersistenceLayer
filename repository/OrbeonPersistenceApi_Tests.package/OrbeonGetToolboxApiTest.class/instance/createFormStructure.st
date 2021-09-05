other
createFormStructure

	^testRoot 
		buildPublishedFormNamed: 'library' 
		title: 'Library' 
		withXml: testRoot newDefinitionTemplate formDefinition_ue_library 
		in: (testRoot getExistingApplicationOrCreateNewNamed: 'ue')