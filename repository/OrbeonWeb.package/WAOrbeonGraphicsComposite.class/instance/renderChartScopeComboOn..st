render
renderChartScopeComboOn: html
	| scopes |

	scopes := self getChartScopeNames collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: scopes withOriginalNames: self getChartScopeNames.

	^self renderGenericActiveComboOn: html 
			id: 'scope' 
			label: ('Scope' translateIn: self session) 
			list: (#(''), self getChartScopeNames) 
			callback: [:value | 	self addSearchValue: value named: 'scope'.
										self resetDistributionValue.
										self resetChartTypeValue.
										self setChartDefinition.] 
			selected: [self getScopeValue]