other
tearDown

	super tearDown.

	self application unregisterDefinitionNamed: 'iterator'.

	self application removeFromCache.