other
createDistributionReport
	| error application formDefinition |

	application := self getOrbeonApplicationClass applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].

	^formDefinition
			reportFieldDistributionFor: self fieldName 
			startDate: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex].