highcharts
drawGlobalQuantityChartOn: html series: aHighchartsSeriesClass

	distributionReport := self getOrbeonApplicationClass reportQuantityDistributionFrom: self getStartDate to: self getEndDate. 

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: aHighchartsSeriesClass)
			on: html