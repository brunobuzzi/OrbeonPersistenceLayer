highcharts
drawFormDefinitionModificationnDayDistributionGraphOn: html

	distributionReport := selectedDefinition reportInstancesDayDistributionUsing: #modifiedTime from: self getStartDate to: self getEndDate satisfying: self queryBlock. 

	self renderArray3Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap)
			on: html