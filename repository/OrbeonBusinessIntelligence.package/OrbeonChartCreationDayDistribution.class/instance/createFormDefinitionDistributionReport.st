other
createFormDefinitionDistributionReport
	| error application formDefinition |

	application := self systemRoot applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].

	^formDefinition
			reportInstancesDayDistributionUsing: #createdTime
			from: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]