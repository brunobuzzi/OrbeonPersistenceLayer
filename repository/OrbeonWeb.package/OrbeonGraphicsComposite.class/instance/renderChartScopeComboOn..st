render
renderChartScopeComboOn: html
	| scopes |

	scopes := self getCharScopeNames collect: [:each | each translateIn: self session].

	self storeReverseTranslationFor: scopes withOriginalNames: self getCharScopeNames.

	^self renderGenericActiveComboOn: html withList: self getCharScopeNames forVariable: 'scope' label: ('Scope' translateIn: self session)