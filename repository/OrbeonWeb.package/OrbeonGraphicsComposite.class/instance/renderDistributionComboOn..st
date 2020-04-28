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
			callback: [:value | searchValues at: 'distribution' put: value. self setChartDefinition]  
			selected: [searchValues at: 'distribution' ifAbsent: ['']]