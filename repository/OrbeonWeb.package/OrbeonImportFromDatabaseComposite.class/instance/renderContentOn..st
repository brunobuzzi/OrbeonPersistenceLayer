other
renderContentOn: html

	html div with: [
		html form class: 'centered-unique-form'; with: [
			html fieldSet class: 'border-radius10px'; with: [ 
				html legend: 'Import Configuration'.
				html label attributeAt: 'for' put: 'app-name'; with: ('Application Name' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'app-name'; callback: [:value | self addValue: value named: 'app-name'].
				html label attributeAt: 'for' put: 'form-name'; with: ('Form Name' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'form-name'; callback: [:value | self addValue: value named: 'form-name'].
				html label attributeAt: 'for' put: 'from-version'; with: ('Starting at Version' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'from-version'; callback: [:value | self addValue: value named: 'from-version'].
				html label attributeAt: 'for' put: 'to-version'; with: ('Ending at Version' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'to-version'; callback: [:value | self addValue: value named: 'to-version'].
				html submitButton callback: [self importDataFromDatabase]; with: ('Import Data' translateFor: self session user).
			]
		]
	].