highcharts
drawFormRegistryCreationDayDistributionGraphOn: html

	distributionReport := selectedDefinition registry reportInstancesDayDistributionUsing: #createdTime from: self getStartDate to: self getEndDate satisfying: self queryBlock. 

	self renderArray3Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap)
			on: html