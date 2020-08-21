other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'energy-recursive'.

	apiOperation application removeFromCache.