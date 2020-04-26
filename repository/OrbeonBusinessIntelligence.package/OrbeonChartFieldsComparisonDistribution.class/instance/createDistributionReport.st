other
createDistributionReport
	| error |

	^OrbeonPublishedFormDefinition 
		reportFieldsComparisonEvolutionFor: fieldsCollection 
		startDate: self startDate 
		to: self endDate  
		satisfying: self queryBlock 
		onError: [:ex | error := ex]