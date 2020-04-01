highcharts basic
renderHeatMapWithException: anExceptionOrNil on: html 

	anExceptionOrNil ifNotNil: [:exception | ^self renderException: exception on: html].

	self renderArray3Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesHeatmap)
			on: html