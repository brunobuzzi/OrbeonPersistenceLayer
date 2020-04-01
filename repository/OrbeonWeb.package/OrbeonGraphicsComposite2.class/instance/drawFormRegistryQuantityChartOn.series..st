chart command
drawFormRegistryQuantityChartOn: html series: aHighchartsSeriesClass
	| error |
	
	distributionReport := selectedDefinition registry reportQuantityDistributionFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderChartType: aHighchartsSeriesClass withException: error on: html