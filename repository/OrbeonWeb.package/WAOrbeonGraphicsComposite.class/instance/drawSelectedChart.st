chart command
drawSelectedChart

	self setChartDefinition.
	(self getStartDate isNil or: [self getEndDate isNil]) ifTrue: [^self addValue: 'red' named: 'dateBackcolor']. 
	self addValue: 'white' named: 'dateBackcolor'.
	self showDefinitionList: false.
	self isRenderingChart: true.