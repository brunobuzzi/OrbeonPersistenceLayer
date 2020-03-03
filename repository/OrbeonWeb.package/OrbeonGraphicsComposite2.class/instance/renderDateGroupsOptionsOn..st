render
renderDateGroupsOptionsOn: html
	|  groupsOptions |

	groupsOptions := #('Year' 'Month' 'Week' 'Day') collect: [:each | each translateIn: self session].

	html div id: 'report-bottom-options'; with: [
		html form with: [ 
			html fieldSet with: [
				html legend with: 'Time Span'.
				html radioGroup
					callback: [:value | self onDateRadioButtonChanged: value];
					selected: (self componentValueAt: 'time-span');
					with: [ :group |
						groupsOptions do: [ :each |
							html label style: 'display: inline-flex; margin-right: 5px'; with: [ 
								group radioButton value: each.
								html text: each ].
							] 
				].
			].
		].
	].