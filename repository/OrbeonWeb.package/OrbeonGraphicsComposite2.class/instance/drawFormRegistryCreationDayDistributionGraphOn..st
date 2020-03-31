highcharts
drawFormRegistryCreationDayDistributionGraphOn: html
	| error |

	self queryBlockInInvalid ifTrue: [^self renderInvalidQueryBlockOn: html].

	distributionReport := selectedDefinition registry reportInstancesDayDistributionUsing: #createdTime from: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	error ifNotNil: [:exception | ^self renderException: exception on: html].

	self renderArray3Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap)
			on: html