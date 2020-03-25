render
renderGraphicsOptionsOn: html

	html div class: 'centered-unique-form'; with: [
		html form with: [
			html fieldSet class: 'border-radius10px'; with: [ 
				html legend: ('Charts Configuration' translateIn: self session).
				self renderChartTypeComboOn: html.
				self renderStartEndDatesOn: html.
				((self searchValueAt: 'chart-scope') = 'Fields Values') ifTrue: [self renderFormFieldFilterOn: html]. 
				html submitButton callback: [self drawSelectedChart]; with: 'Show Chart'.
				html submitButton callback: [self saveChart]; with: 'Save Chart'.
			].
		].
	].