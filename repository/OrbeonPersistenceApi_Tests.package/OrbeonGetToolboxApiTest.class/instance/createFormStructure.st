other
createFormStructure

	^testRoot 
		buildPublishedFormNamed: 'library' 
		title: 'Library' 
		withXml: self newDefinitionTemplate formDefinition_ue_library 
		in: (testRoot getExistingApplicationOrCreateNewNamed: 'ue')