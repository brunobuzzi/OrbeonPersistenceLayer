render
renderRenderChartOn: html

	html div class: 'margin-top-15px'; with: [
		(chartDefinition isReadyToRender and: [chartDefinition isGlobalScope or:[selectedDefinition notNil]])
		ifTrue:[ html submitButton callback: [self drawSelectedChart]; with: 'Show Chart'.
					html submitButton callback: [self saveChart]; with: 'Save Chart'].
	].