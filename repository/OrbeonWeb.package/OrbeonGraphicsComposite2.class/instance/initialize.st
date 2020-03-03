other
initialize 

	super initialize.

	self initializeBatchedLists.

	showDefinitionList := true.
	showOptionsForms := true.
	selectedFields := OrderedCollection new.
	isRenderingChart := false.