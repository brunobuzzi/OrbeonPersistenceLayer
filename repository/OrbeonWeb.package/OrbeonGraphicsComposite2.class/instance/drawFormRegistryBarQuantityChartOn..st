highcharts
drawFormRegistryBarQuantityChartOn: html
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition registry reportQuantityDistributionFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderChartType: HighchartsSeriesColumn withException: error on: html