render
renderFormFieldFilterOn: html

	self renderFormFieldComboOn: html.
	self isDoubleDonutQuantityChart ifTrue: [self renderFormFieldCombo2On: html]."this is the secondary field in the Distribution"
html break.
	html label attributeAt: 'for' put: 'range-start'; with: ('Range' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'range-start'; callback: [:value | self addSearchValue: value named: 'range-start']; with: (self searchValueAt: 'range-start').
	html textInput attributeAt: 'id' put: 'range-end'; callback: [:value | self addSearchValue: value named: 'range-end']; with: (self searchValueAt: 'range-end').
html break.
	html label attributeAt: 'for' put: 'form-condition'; with: ('Form Condition Block' translateFor: self session user).
	html textArea attributeAt: 'id' put: 'form-condition'; callback: [:value | self addSearchValue: value named: 'form-condition']; with: (self searchValueAt: 'form-condition').
html break.