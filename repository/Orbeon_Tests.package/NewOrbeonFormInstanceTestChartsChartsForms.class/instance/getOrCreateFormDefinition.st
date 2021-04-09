setUp
getOrCreateFormDefinition
		| anOrbeonApplication |

	anOrbeonApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'charts'.

	^anOrbeonApplication 
		definitionNamed: 'charts-forms' 
		ifNone: [self buildFormStructureFrom: self newDefinitionTemplate formDefinition_charts_charts_forms
							name: 'charts-forms'
							in: 'charts'
							title: 'Charts Forms']