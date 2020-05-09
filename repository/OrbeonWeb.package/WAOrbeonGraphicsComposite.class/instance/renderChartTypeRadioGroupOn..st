render
renderChartTypeRadioGroupOn: html
	| chartTypes |

	chartTypes := (chartDefinition distribution notNil and:[self getDistributionValue notEmpty]) ifTrue: [chartDefinition distribution chartsTypes] ifFalse: [#()].

	html div id: 'report-bottom-options'; class: 'radio-button-container'; with: [
		html form with: [ 
			html fieldSet with: [
				html legend with: ('Chart Type' translateIn: self session) .
				html radioGroup
					callback: [:value | 	
										self addSearchValue: value named: 'chart-type'.
										self setChartDefinition] ;
					selected: self getChartTypeValue;
					with: [ :group |
						chartTypes do: [ :each |
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