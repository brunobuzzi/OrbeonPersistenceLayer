other
createDistributionReport
	| error |

	^self defaultPublishedFormDefinitionClass 
		reportFieldsComparisonEvolutionFor: fieldsCollection 
		startDate: self startDate 
		to: self endDate  
		satisfying: self queryBlock 
		onError: [:ex | error := ex]