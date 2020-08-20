other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'simple-registration'.
	apiOperation application unregisterDefinitionNamed: 'simple-registration-2'.

	apiOperation application removeFromCache.