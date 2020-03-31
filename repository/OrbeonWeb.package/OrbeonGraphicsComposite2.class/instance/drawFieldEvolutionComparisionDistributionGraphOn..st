highcharts
drawFieldEvolutionComparisionDistributionGraphOn: html
	| highchart error |

	selectedDefinition ifNil: [^self].
	self queryBlockInInvalid ifTrue: [^self renderInvalidQueryBlockOn: html].

	distributionReport := selectedDefinition reportFieldsComparisonEvolutionFor: selectedFields startDate: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	error ifNotNil: [:exception | ^self renderException: exception on: html].

	distributionReport xAxisIsDate: true.
	distributionReport createSecondaryDistributions.

	highchart := html highcharts newChart.
	highchart addYAxis title text: distributionReport yTitle.
	highchart legend enabled: true.
	highchart title text: distributionReport name.
	highchart subtitle text: distributionReport description.
	highchart xAxis title text: distributionReport xTitle.
	highchart xAxis type: 'category'.

	distributionReport categories ifNotNil: [:categories | highchart xAxis categories: categories].

	distributionReport fieldDistributions do: [:eachDistributionReport | | data |
		data := OrderedCollection new.
		(eachDistributionReport getDistributionToRenderFor: (self componentValueAt: 'time-span')) keysAndValuesDo: [:key :value | 
			data add: (Array with: key with: value).
		].
		(highchart addSeriesOf: HighchartsSeriesSpline)
			index: 0;
			name: eachDistributionReport seriesName;
			data: data asArray.
	].

	html div script: highchart