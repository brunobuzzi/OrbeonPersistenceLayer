other
createRepeatableFormStructure

	testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	^self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_manual_form_issue_369
			name: 'manual-form'
			in: 'agesic' 
			title: 'Manual Form'