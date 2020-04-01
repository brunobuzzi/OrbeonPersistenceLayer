highcharts
drawGlobalQuantityChartOn: html series: aHighchartsSeriesClass
	| error |

	distributionReport := self getOrbeonApplicationClass reportQuantityDistributionFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderChartType: aHighchartsSeriesClass withException: error on: html