render
renderFormFieldFilterOn: html

	self renderFormFieldComboOn: html.

"	html label attributeAt: 'for' put: 'range-start'; with: ('Range' translateIn: self session).
	html textInput attributeAt: 'id' put: 'range-start'; callback: [:value | self addSearchValue: value named: 'range-start']; with: (self searchValueAt: 'range-start').
	html textInput attributeAt: 'id' put: 'range-end'; callback: [:value | self addSearchValue: value named: 'range-end']; with: (self searchValueAt: 'range-end')."

	html label attributeAt: 'for' put: 'form-condition'; with: ('Form Condition Block' translateIn: self session).
	html textArea attributeAt: 'id' put: 'form-condition'; callback: [:value | self addSearchValue: value named: 'form-condition']; with: (self searchValueAt: 'form-condition').