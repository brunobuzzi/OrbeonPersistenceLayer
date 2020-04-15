highcharts
drawGlobalFormInstancesCreationPieByMonthGraphOn: html
	| error |

	distributionReport := self getOrbeonApplicationClass reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderChartType: HighchartsSeriesPie withException: error on: html