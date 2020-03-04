highcharts
drawFormRegistryFormInstancesModificationPieByMonthGraphOn: html
	
	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition registry reportModificationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock.

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie)
			on: html