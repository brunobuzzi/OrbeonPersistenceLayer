setUp
setUp
	| definition |
	super setUp.
	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive'
				ifNone: 
					[testRoot 
						buildPublishedFormNamed: 'energy-recursive'
						title: 'Energy Recursive'
						withXml: self newDefinitionTemplate formDefinition_agesic_energy_recursive
						in: application].
	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
				definition: definition;
				xmlString: self newInstanceTemplate formInstance_agesic_energy_recursive;
				buildForm;
				yourself