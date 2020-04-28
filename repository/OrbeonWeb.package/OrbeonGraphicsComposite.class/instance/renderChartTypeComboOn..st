render
renderChartTypeComboOn: html
	| chartTypes translatedChartTypes |

	chartTypes := chartDefinition distribution ifNil: [#()] ifNotNil: [:distribution | distribution chartsTypes].

	translatedChartTypes := chartTypes collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: translatedChartTypes withOriginalNames: chartTypes.

	^self renderGenericActiveComboOn: html 
			id: 'chart-type'
			label: ('Chart Type' translateIn: self session) 
			list: (#(''), translatedChartTypes)
			callback: [:value | searchValues at: 'chart-type' put: value. self setChartDefinition]  
			selected: [searchValues at: 'chart-type' ifAbsent: ['']]