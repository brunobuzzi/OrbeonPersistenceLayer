render
renderGraphicsOptionsOn: html

		html form with: [
			html fieldSet with: [ 
				html legend: 'Charts'.
				self renderChartTypeComboOn: html.
				self renderStartEndDatesOn: html.
				((self searchValueAt: 'chart-scope') = 'Fields Values') ifTrue: [self renderFormFieldFilterOn: html]. 
				html submitButton callback: [self drawSelectedChart]; with: 'Show Chart'.
				html submitButton callback: [self saveChart]; with: 'Save Chart'.
			]
		]