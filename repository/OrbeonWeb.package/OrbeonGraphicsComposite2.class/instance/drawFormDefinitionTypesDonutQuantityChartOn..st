highcharts
drawFormDefinitionTypesDonutQuantityChartOn: html
	| highchart |
	
	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition reporFormDefinitionTypesDistribution.

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie)
			on: html