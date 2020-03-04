highcharts
drawGlobalFormInstancesModificationPieByMonthGraphOn: html

	distributionReport := self getOrbeonApplicationClass reportModificationDistributionByMonthFrom: self getStartDate to: self getEndDate. 

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie)
			on: html