highcharts
drawFieldEvolutionComparisionDistributionGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	[distributionReport := selectedDefinition reportFieldsComparisonEvolutionFor: selectedFields startDate: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]]
	on: Error do: [:ex | ^self renderReportException: ex on: html].

	self renderFieldEvolutionComparisonWithException: error on: html