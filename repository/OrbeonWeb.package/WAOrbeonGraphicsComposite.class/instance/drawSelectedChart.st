chart command
drawSelectedChart

	self setChartDefinition.
	self showOptionsForms: false.
	self showDefinitionList: false.
	self isRenderingChart: true.