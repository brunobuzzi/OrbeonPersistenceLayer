other
createDistributionReport
	| error application formDefinition report |

	application := self getOrbeonApplicationClass applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].

	report  := formDefinition
					reportFieldsComparisonEvolutionFor: fieldsCollection
					startDate: self startDate 
					to: self endDate  
					satisfying: self queryBlock  
					onError: [:ex | error := ex].

	report xAxisIsDate: true.

	^report