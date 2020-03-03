render
renderDateGroupsOptionsOn: html
	|  groupsOptions |

	groupsOptions := #('Year' 'Month' 'Week' 'Day') collect: [:each | each translateIn: self session].

	html div id: 'bpm-report-bottom-options'; with: [
		html form with: [ 
			html fieldSet with: [
				html radioGroup
					callback: [:value | self onDateRadioButtonChanged: value];
					with: [ :group |
						groupsOptions do: [ :each |
							html label: [ 
								group radioButton value: each.
								html text: each ].
							] 
				].
			].
		].
	].