setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	form := testRoot 
					buildPublishedFormNamed: 'energy-recursive' 
					title: 'Energy Recursive Form' 
					withXml: self newDefinitionTemplate formDefinition_agesic_energy_recursive 
					in: application.