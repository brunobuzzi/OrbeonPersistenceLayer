highcharts basic
renderChart: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection atDiv: aWADivTag
	| mainDistribution |

	distributionCollection ifEmpty: [^self].
	
	mainDistribution := distributionCollection at: 1.
	aHighchart addYAxis title text: mainDistribution yTitle.
	aHighchart legend enabled: true.
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: mainDistribution xTitle.
	aHighchart xAxis type: 'category'.
	mainDistribution categories ifNotNil: [:categories | aHighchart xAxis categories: categories]. 

	distributionCollection keysAndValuesDo: [:index :eachDistribution | | serieClass data |
		serieClass := seriesClassCollection at: index.
		data := OrderedCollection new.
		(eachDistribution getDistributionToRenderFor: nil) keysAndValuesDo: [:key :value | 
			data add: (Array with: key with: value).
		].
		(aHighchart addSeriesOf: serieClass)
			index: 0;
			name: eachDistribution seriesName;
			data: data asArray.
	]. 

	aWADivTag script: aHighchart