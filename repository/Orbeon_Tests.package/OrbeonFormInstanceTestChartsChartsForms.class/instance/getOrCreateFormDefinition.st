setUp
getOrCreateFormDefinition
	| anOrbeonApplication |
	anOrbeonApplication := testRoot 
				getExistingApplicationOrCreateNewNamed: 'charts'.
	^anOrbeonApplication definitionNamed: 'charts-forms'
		ifNone: 
			[testRoot 
				buildPublishedFormNamed: 'charts-forms'
				title: 'Charts Forms'
				withXml: self newDefinitionTemplate formDefinition_charts_charts_forms
				in: anOrbeonApplication]