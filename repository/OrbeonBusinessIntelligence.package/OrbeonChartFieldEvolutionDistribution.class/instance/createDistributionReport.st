other
createDistributionReport
	| error application formDefinition report |

	application := self systemRoot applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].

	report  := formDefinition
					reportFieldEvolutionFor: self fieldName 
					startDate: self startDate 
					to: self endDate  
					satisfying: self queryBlock  
					onError: [:ex | error := ex].

	report xAxisIsDate: true.

	^report