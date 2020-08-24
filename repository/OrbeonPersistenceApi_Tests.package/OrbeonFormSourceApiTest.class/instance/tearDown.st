other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'test-all-types-4'.

	apiOperation application removeFromCache.