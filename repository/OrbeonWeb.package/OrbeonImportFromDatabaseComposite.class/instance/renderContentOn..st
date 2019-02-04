other
renderContentOn: html

	html div class: 'centered-unique-form'; with: [
		html form class: 'centered-unique-form'; with: [
			html fieldSet class: 'border-radius10px'; with: [ 
				html legend: 'Import Configuration'.
				html label attributeAt: 'for' put: 'app-name'; with: ('Application Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'app-name'; callback: [:value | self addValue: value named: 'app-name'].
				html label attributeAt: 'for' put: 'form-name'; with: ('Form Name' translateIn: self session).
				html textInput attributeAt: 'id' put: 'form-name'; callback: [:value | self addValue: value named: 'form-name'].
				html label attributeAt: 'for' put: 'from-version'; with: ('Starting at Version' translateIn: self session).
				html textInput attributeAt: 'id' put: 'from-version'; class: 'width-50px'; callback: [:value | self addValue: value named: 'from-version']; type: 'number'; attributeAt: 'min' put: 1.
				html label attributeAt: 'for' put: 'to-version'; with: ('Ending at Version' translateIn: self session).
				html textInput attributeAt: 'id' put: 'to-version'; class: 'width-50px'; callback: [:value | self addValue: value named: 'to-version']; type: 'number'; attributeAt: 'min' put: 1.
				html submitButton class: 'display-block'; callback: [self importDataFromDatabase]; with: ('Import Data' translateIn: self session).
			]
		]
	].