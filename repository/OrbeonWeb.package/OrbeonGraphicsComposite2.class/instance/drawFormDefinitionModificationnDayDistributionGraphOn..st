highcharts
drawFormDefinitionModificationnDayDistributionGraphOn: html
	| distributionCollection mainDistribution yAxisCategories newSerie highchart data |

	highchart := html highcharts newChart.
	distributionReport := selectedDefinition reportInstancesDayDistributionUsing: #modifiedTime from: self getStartDate to: self getEndDate satisfying: self queryBlock. 

	yAxisCategories := #('Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday') "collect: [:each | each translateFor: self session user]".

	highchart colorAxis minColor: '#ffffff'.
	highchart colorAxis maxColor: '#000099'.
	highchart addYAxis categories: yAxisCategories.
	highchart yAxis first title text: 'Days'.

	highchart legend enabled: false.
	highchart title text: distributionReport name.
	highchart subtitle text: distributionReport description.
	highchart xAxis title text: distributionReport xTitle.
	highchart xAxis type: 'category'.
	highchart xAxis categories: distributionReport getHeatMapXAxisDaysCollection.

	data := OrderedCollection new.

	distributionReport distributionKeysAndValuesDo: [:key :value | 
		data add: (Array with: key with: value)].

	newSerie := highchart addSeriesOf: HighchartsSeriesHeatmap.
	newSerie
		index: 0;
		name: distributionReport seriesName;
		data: data asArray.
	newSerie dataLabels color: '#000000';
							enabled: true.

	html div script: highchart.