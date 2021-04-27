setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_energy_recursive 
						name: 'energy-recursive' 
						in: 'agesic'
						title: 'Energy Recursive Form'