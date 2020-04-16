render
renderChartTypeComboOn: html
	| chartTypes translatedChartTypes |

	chartTypes := chartDefinition distribution ifNil: [#()] ifNotNil: [:distribution | distribution chartsTypes].

	translatedChartTypes := chartTypes collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: translatedChartTypes withOriginalNames: chartTypes.

	^self renderGenericActiveComboOn: html withList: translatedChartTypes forVariable: 'chart-type' label: ('Chart Type' translateIn: self session)