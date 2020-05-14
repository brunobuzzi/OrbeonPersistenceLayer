render
renderFormFieldFilterOn: html

	html div class: 'margin-top-15px'; with: [self renderFormFieldComboOn: html].


	html div class: 'display-block'; with: [
		html label class: 'display-block'; attributeAt: 'for' put: 'form-condition'; with: ('Form Condition Block' translateIn: self session).
		html textArea attributeAt: 'id' put: 'form-condition'; callback: [:value | self addSearchValue: value named: 'form-condition']; with: (self searchValueAt: 'form-condition').
	].