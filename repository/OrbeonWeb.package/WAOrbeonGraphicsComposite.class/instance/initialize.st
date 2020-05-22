other
initialize 

	super initialize.

	self initializeBatchedLists.

	showDefinitionList := true.
	selectedFields := Dictionary new.
	isRenderingChart := false.

	self basicCreateChartDefinition.