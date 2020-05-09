chart type
getChartTypeValue

	^self searchValueAt: 'chart-type' ifAbsent: ['']