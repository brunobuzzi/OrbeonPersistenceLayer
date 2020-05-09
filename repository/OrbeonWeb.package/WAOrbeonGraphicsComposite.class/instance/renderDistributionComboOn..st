render
renderDistributionComboOn: html
	| translatedDistributions distributions |

	distributions := chartDefinition scope ifNil: [#()] ifNotNil: [:scope | scope getDistributionOptions]. 

	translatedDistributions := distributions collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: translatedDistributions withOriginalNames: distributions.

	^self renderGenericActiveComboOn: html 
			id: 'distribution' 
			label: ('Distribution' translateIn: self session) 
			list: (#(''), distributions)
			callback: [:value | 	self addSearchValue: value named: 'distribution'.
										self resetChartTypeValue.
										self setChartDefinition]  
			selected: [self getDistributionValue]