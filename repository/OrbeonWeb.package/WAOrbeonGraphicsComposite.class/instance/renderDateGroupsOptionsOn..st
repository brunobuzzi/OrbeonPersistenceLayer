render
renderDateGroupsOptionsOn: html
	|  groupsOptions |

	groupsOptions := #('Year' 'Month' 'Week' 'Day') collect: [:each | each translateIn: self session].

	html div class: 'radio-button-container'; with: [
		html fieldSet with: [
			html legend with: 'Time Span'.
			html radioGroup
				callback: [:value | self addSearchValue: value named: 'dateGroupName'];
				selected: self getDateGroupNameValue;
				with: [ :group |
					groupsOptions do: [ :each |
						html label with: [ 
							group radioButton 
								onChange: 'submit()';
								value: each.
							html text: each ].
						] 
			].
		].
	].