render
renderMigrateApplicationAndFormOn: html

	html div class: 'centered-unique-form'; with: [
		html form class: 'centered-unique-form float-left'; with: [
			html fieldSet with: [ 
				html legend: 'Migrate Application and Form'.
				html label attributeAt: 'for' put: 'app-name'; with: ('Application Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'app-name'; callback: [:value | self addValue: value named: 'app-name'].
				html label attributeAt: 'for' put: 'form-name'; with: ('Form Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'form-name'; callback: [:value | self addValue: value named: 'form-name'].
				html submitButton class: 'display-block'; callback: [self importApplicationAndForm]; with: ('Import Data' translateIn: self session).
			]
		]
	]