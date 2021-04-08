setUp
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'library'.
	application unregisterDefinitionNamed: 'library-composed-form'.
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') unregisterDefinitionNamed: 'library'.
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') removeFromCache.

	super tearDown.