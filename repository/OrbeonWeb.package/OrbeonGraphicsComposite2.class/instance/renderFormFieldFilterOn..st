render
renderFormFieldFilterOn: html

	self renderFormFieldComboOn: html.
html break.
	html label attributeAt: 'for' put: 'range-start'; with: ('Range' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'range-start'; callback: [:value | self addSearchValue: value named: 'range-start']; with: (self searchValueAt: 'range-start').
	html textInput attributeAt: 'id' put: 'range-end'; callback: [:value | self addSearchValue: value named: 'range-end']; with: (self searchValueAt: 'range-end').

html break.