other
renderMigrateInstancesOfFormVersionFromDateOn: html

	html div class: 'centered-unique-form'; with: [
		html form class: 'centered-unique-form float-left'; with: [
			html fieldSet with: [ 
				html legend: 'Migrate Instances of Form Version'.
				html label attributeAt: 'for' put: 'app-name'; with: ('Application Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'app-name'; callback: [:value | self addValue: value named: 'app-name'].
				html label attributeAt: 'for' put: 'form-name'; with: ('Form Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'form-name'; callback: [:value | self addValue: value named: 'form-name'].
				html label attributeAt: 'for' put: 'version'; with: ('Version' translateIn: self session).
				html numberInput attributeAt: 'id' put: 'version'; callback: [:value | self addValue: value named: 'version'].
				html label attributeAt: 'for' put: 'from-date'; with: ('Date From' translateIn: self session).
				html dateInput id: 'from-date'; callback: [:value | self addValue: value named: 'from-date'].
				html submitButton class: 'display-block'; callback: [self importInstancesOfFormVersionFromDate]; with: ('Import Data' translateIn: self session).
			]
		]
	]