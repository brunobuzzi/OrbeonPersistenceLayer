other
initialize 

	super initialize.

	self initializeBatchedLists.

	showDefinitionList := true.
	showOptionsForms := true.
	selectedFields := Dictionary new.
	isRenderingChart := false.

	self basicCreateChartDefinition.