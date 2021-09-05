setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'charts'.

	form := application definitionNamed: 'charts-forms' 
								ifNone: [testRoot buildPublishedFormNamed: 'charts-forms' 
															title: 'Charts Form' 
															withXml: testRoot newDefinitionTemplate formDefinition_charts_charts_forms 
															in: application].