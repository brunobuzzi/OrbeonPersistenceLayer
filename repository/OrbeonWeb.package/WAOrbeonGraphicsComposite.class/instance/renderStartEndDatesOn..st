render
renderStartEndDatesOn: html

	html div class: 'display-inline-block margin-top-15px'; with: [
		html label attributeAt: 'for' put: 'start'; with: ('Start' translateIn: self session).
		html textInput attributeAt: 'id' put: 'start'; callback: [:value | self addSearchValue: value named: 'start-date']; with: (self searchValueAt: 'start-date').
		html label attributeAt: 'for' put: 'end'; with: ('End' translateIn: self session).
		html textInput attributeAt: 'id' put: 'end'; callback: [:value | self addSearchValue: value named: 'end-date']; with: (self searchValueAt: 'end-date').
	].

	html div class: 'display-block'; with: [self renderFormFieldFilterOn: html].

	html div class: 'display-block'; with: [self renderRenderChartOn: html].