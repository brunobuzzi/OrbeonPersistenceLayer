other
createFormStructure

	^testRoot 
			buildPublishedFormNamed: 'energy-recursive' 
			title: 'Energy Recursive Form'
			withXml: testRoot newDefinitionTemplate formDefinition_agesic_energy_recursive 
			in: (testRoot getExistingApplicationOrCreateNewNamed: 'agesic')