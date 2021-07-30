setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'charts'.

	self getOrCreateFormDefinition