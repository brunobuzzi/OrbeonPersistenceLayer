other
tearDown

	application unregisterDefinitionNamed: 'library'.
	application unregisterDefinitionNamed: 'library-composed-form2'.
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') unregisterDefinitionNamed: 'library'.
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') removeFromCache.

	super tearDown.