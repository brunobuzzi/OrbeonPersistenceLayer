highcharts
drawFieldEvolutionDistributionGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition reportFieldEvolutionFor: self getFieldName startDate: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderFieldEvolutionWithException: error on: html