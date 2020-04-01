highcharts
drawFormRegistryFormInstancesCreationPieByMonthGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition registry reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderChartType: HighchartsSeriesPie withException: error on: html