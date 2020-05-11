render
renderGraphicsOptionsOn: html

	html div class: 'centered-unique-form'; with: [
		html form id: 'chart-form'; with: [
			html fieldSet class: 'border-radius10px'; with: [ 
				html legend: ('Charts Configuration' translateIn: self session).
				self renderChartScopeRadioGroupOn: html.
				self renderDistributionRadioGroupOn: html.
				self renderChartTypeRadioGroupOn: html.
				self renderStartEndDatesOn: html.
				self renderFormFieldFilterOn: html. 
				self renderRenderChartOn: html.
			].
		].
	].