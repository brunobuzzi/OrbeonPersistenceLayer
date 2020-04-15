highcharts
drawFormDefinitionTypesDonutQuantityChartOn: html
	
	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition reporFormDefinitionTypesDistribution.

	self renderChartType: HighchartsSeriesPie withException: nil on: html