other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'simple-registration'.

	apiOperation application removeFromCache.