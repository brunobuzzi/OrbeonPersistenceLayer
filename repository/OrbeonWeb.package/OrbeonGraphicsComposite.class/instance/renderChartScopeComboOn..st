render
renderChartScopeComboOn: html
	| scopes |

	scopes := self getChartScopeNames collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: scopes withOriginalNames: self getChartScopeNames.

	^self renderGenericActiveComboOn: html 
			id: 'scope' 
			label: ('Scope' translateIn: self session) 
			list: (#(''), self getChartScopeNames) 
			callback: [:value | searchValues at: 'scope' put: value. 
										self resetDistributionValue.
										self resetChartTypeValue.
										self setChartDefinition]  
			selected: [self getScopeValue]