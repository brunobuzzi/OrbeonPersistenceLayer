render
renderChartConditionOn: html

	html div class: 'display-block margin-top-15px'; with: [
		html label class: 'display-block'; attributeAt: 'for' put: 'form-condition'; with: ('Form Condition Block' translateIn: self session).
		html textArea 
					class: 'width-100per';
					attributeAt: 'id' put: 'form-condition'; 
					callback: [:value | self addSearchValue: value named: 'form-condition']; 
					with: (self searchValueAt: 'form-condition').
	].