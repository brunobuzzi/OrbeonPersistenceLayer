setUp
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	form := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_energy_recursive 
						name: 'energy-recursive' 
						in: 'agesic'
						title: 'Energy Recursive Form'