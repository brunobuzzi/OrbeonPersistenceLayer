render
renderChartScopeRadioGroupOn: html
	| scopes |

	scopes := self getChartScopeNames collect: [:each | each translateIn: self session].

	html div class: 'radio-button-container'; with: [
		html fieldSet with: [
			html legend with: ('Scope' translateIn: self session).
			html radioGroup
				callback: [:value | 	
									self addSearchValue: value named: 'scope'.
									self setChartDefinition.] ;
				selected: self getScopeValue;
				with: [ :group |
					scopes do: [ :each |
						html label with: [ 
							group radioButton 
								onChange: 'submit()';
								value: each.
							html text: each ].
						] 
			].
		].
	].