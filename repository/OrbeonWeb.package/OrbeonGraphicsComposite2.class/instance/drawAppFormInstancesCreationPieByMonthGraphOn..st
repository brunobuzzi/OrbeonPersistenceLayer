highcharts
drawAppFormInstancesCreationPieByMonthGraphOn: html 

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition application reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate. 

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie)
			on: html