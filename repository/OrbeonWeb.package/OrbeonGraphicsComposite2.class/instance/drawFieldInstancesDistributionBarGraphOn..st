highcharts
drawFieldInstancesDistributionBarGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition reportFieldDistributionFor: self getFieldName startDate: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderChartType: HighchartsSeriesColumn withException: error on: html