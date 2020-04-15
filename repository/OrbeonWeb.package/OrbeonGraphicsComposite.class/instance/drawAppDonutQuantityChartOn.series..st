chart command
drawAppDonutQuantityChartOn: html series: aHighchartsSeriesClass
	| error |
	
	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition application reportQuantityDistributionFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderChartType: aHighchartsSeriesClass withException: error on: html