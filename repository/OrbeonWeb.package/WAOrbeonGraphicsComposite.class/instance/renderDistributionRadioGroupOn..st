render
renderDistributionRadioGroupOn: html
	| distributions |

	distributions := chartDefinition scope ifNil: [#()] ifNotNil: [:scope | scope getDistributionOptions]. 

	html div id: 'report-bottom-options'; class: 'radio-button-container'; with: [
		html form with: [ 
			html fieldSet with: [
				html legend with: ('Distribution' translateIn: self session) .
				html radioGroup
					callback: [:value | 	
										self addSearchValue: value named: 'distribution'.
										self setChartDefinition] ;
					selected: self getDistributionValue;
					with: [ :group |
						distributions do: [ :each |
							html label class: 'radio-button-horizontal'; with: [ 
								group radioButton 
									onChange: 'submit()';
									value: each.
								html text: each ].
							] 
				].
			].
		].
	].