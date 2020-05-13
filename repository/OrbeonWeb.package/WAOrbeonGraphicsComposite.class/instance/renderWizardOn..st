render
renderWizardOn: html

	wizard ifNil: [
		wizard := SEWAFRenderWizardPanel
						newOn: self
						availabilityBlocks: (Array with: [true] with: [true] with: [true] with: [true] "with: [true] with: [true]")
						creationBlocks: (Array 
													with: [:canvas | self renderChartScopeRadioGroupOn: canvas] 
													with: [:canvas | self renderDistributionRadioGroupOn: canvas]
													with: [:canvas | self renderChartTypeRadioGroupOn: canvas]
													with: [:canvas | self renderStartEndDatesOn: canvas]
												"	with: [:canvas | self renderFormFieldFilterOn: canvas]"
												"	with: [:canvas | self renderRenderChartOn: canvas]"
						).
	].

	wizard currentCanvas: html.
	html render: wizard