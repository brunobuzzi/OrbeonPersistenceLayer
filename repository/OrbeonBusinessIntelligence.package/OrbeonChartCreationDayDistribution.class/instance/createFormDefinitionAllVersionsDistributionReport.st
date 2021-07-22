other
createFormDefinitionAllVersionsDistributionReport
	| error application formDefinition |

	application := self systemRoot applicationNamed: self applicationName ifNone: [].
	formDefinition := application definitionNamed: self formName ifNone: [].

	^formDefinition 
			registryReportInstancesDayDistributionUsing: #createdTime
			from: self startDate 
			to: self endDate 
			satisfying: self queryBlock 
			onError: [:ex | error := ex]