setUp
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'library'.
	application unregisterDefinitionNamed: 'library-composed-form2'.
	(testRoot getExistingApplicationOrCreateNewNamed: 'orbeon') unregisterDefinitionNamed: 'library'.
	(testRoot getExistingApplicationOrCreateNewNamed: 'orbeon') removeFromCache.

	super tearDown.