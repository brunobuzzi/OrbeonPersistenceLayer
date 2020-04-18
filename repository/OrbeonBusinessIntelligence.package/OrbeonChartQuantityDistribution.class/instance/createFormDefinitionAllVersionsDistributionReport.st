other
createFormDefinitionAllVersionsDistributionReport
	| error application formDefinition |

	application := self getOrbeonApplicationClass applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].
	^formDefinition registry
			reportQuantityDistributionFrom: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]