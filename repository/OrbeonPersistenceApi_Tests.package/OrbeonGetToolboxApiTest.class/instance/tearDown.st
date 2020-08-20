other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'library'.

	apiOperation application removeFromCache.