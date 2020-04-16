render
renderDistributionComboOn: html
	| translatedDistributions distributions |

	distributions := chartDefinition scope ifNil: [#()] ifNotNil: [:scope | scope getDistributionOptions]. 

	translatedDistributions := distributions collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: translatedDistributions withOriginalNames: distributions.

	^self renderGenericActiveComboOn: html withList: distributions forVariable: 'distribution' label: ('Distribution' translateIn: self session)