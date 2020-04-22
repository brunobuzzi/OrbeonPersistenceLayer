render
renderDateGroupsOptionsOn: html
	|  groupsOptions |

	groupsOptions := #('Year' 'Month' 'Week' 'Day') collect: [:each | each translateIn: self session].

	html div id: 'report-bottom-options'; class: 'radio-button-container'; with: [
		html form with: [ 
			html fieldSet with: [
				html legend with: 'Time Span'.
				html radioGroup
					callback: [:value | self onDateRadioButtonChanged: value];
					selected: chartDefinition dateGroupName;
					with: [ :group |
						groupsOptions do: [ :each |
							html label class: 'radio-button-horizontal'; with: [ 
								group radioButton value: each.
								html text: each ].
							] 
				].
			].
		].
	].