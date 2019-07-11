chart command
drawAppDonutQuantityChartOn: html series: aHighchartsSeriesClass
	| highchart |
	
	distributionReport := selectedDefinition application reportQuantityDistributionFrom: self getStartDate to: self getEndDate. 

	highchart := html highcharts newChart.
	highchart addYAxis title text: distributionReport yTitle.
	highchart legend enabled: true.
	highchart title text: distributionReport name.
	highchart subtitle text: distributionReport description.
	highchart xAxis title text: distributionReport xTitle.
	highchart xAxis type: 'category'.

	distributionReport categories ifNotNil: [:categories | highchart xAxis categories: categories].

	distributionReport getAllReports do: [:eachDistributionReport | | data |
		data := OrderedCollection new.
		(eachDistributionReport getDistributionToRenderFor: nil) keysAndValuesDo: [:key :value | 
			data add: (Array with: key with: value).
		].
		(highchart addSeriesOf: aHighchartsSeriesClass)
			index: 0;
			name: eachDistributionReport seriesName;
			data: data asArray.
	].

	html div script: highchart