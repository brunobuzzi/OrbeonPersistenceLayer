highcharts
drawGlobalAppFormInstancesCreationDayDistributionGraphOn: html

	distributionReport := self getOrbeonApplicationClass reportCreationDayDistributionQuantityFrom: self getStartDate to: self getEndDate. 

	self renderArray3Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap)
			on: html