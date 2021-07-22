setUp
setUp
	| definition |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application 
						definitionNamed: 'energy-recursive' 
						ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_energy_recursive
											name: 'energy-recursive'
											in: 'agesic'
											title: 'Energy Recursive'].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: self newInstanceTemplate formInstance_agesic_energy_recursive ;
					buildForm;
					yourself.