other
createRepeatableFormStructure

	^testRoot 
			buildPublishedFormNamed: 'manual-form' 
			title: 'Manual Form' 
			withXml: testRoot newDefinitionTemplate formDefinition_agesic_manual_form_issue_369 
			in: (testRoot getExistingApplicationOrCreateNewNamed: 'agesic')