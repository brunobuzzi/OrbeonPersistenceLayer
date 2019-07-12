main components
renderAllLatestVersionRadioButtonOn: html
	|  groupsOptions |

	groupsOptions := #('All Versions' 'Latest Versions') collect: [:each | each translateIn: self session].

	html div with: [
		html form with: [ 
			html fieldSet class: 'border-none'; with: [
				html radioGroup
					callback: [:value | self updateRadioButtonOption: value];
					selected: (self currentRadioButtonSelection);
					with: [ :group |
						groupsOptions do: [ :each |
							html label: [ 
								group radioButton onChange: 'submit()'; value: each.
								html text: each ].
							] 
				].
			].
		].
	].