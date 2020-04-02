highcharts basic
renderChartType: chartTypeClass withException: anExceptionOrNil on: html 

	anExceptionOrNil ifNotNil: [:exception | ^self renderException: exception on: html].

	self renderChart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: chartTypeClass)
			on: html