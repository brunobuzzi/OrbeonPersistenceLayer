highcharts
drawGlobalQuantityChartOn: html series: aHighchartsSeriesClass
	| error |

	self queryBlockInInvalid ifTrue: [^self renderInvalidQueryBlockOn: html].

	distributionReport := self getOrbeonApplicationClass reportQuantityDistributionFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	error ifNotNil: [:exception | ^self renderException: exception on: html].

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: aHighchartsSeriesClass)
			on: html