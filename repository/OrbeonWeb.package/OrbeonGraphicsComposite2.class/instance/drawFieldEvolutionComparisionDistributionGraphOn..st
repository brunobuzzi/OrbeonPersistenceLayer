highcharts
drawFieldEvolutionComparisionDistributionGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition reportFieldsComparisonEvolutionFor: selectedFields startDate: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderFieldEvolutionComparisonWithException: error on: html