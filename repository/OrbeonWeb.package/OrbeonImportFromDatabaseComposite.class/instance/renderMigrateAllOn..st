other
renderMigrateAllOn: html

	html div class: 'centered-unique-form'; with: [
		html form class: 'centered-unique-form float-left'; with: [
			html fieldSet with: [ 
				html legend: 'Migrate All'.
				html submitButton class: 'display-block'; callback: [self importAll]; with: ('Migrate All' translateIn: self session).
			]
		]
	]