setUp
setUp

	super setUp.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'charts'.

	form := application definitionNamed: 'charts-forms' 
								ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_charts_charts_forms 
													name: 'charts-forms' 
													in: 'charts' 
													title: 'Charts Form'].