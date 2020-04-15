highcharts
drawAppFormInstancesModificationPieByMonthGraphOn: html 
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition application reportModificationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderChartType: HighchartsSeriesPie withException: error on: html