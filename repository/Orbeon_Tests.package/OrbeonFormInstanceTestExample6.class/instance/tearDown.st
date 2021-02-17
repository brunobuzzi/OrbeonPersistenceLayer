other
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'library'.
	application unregisterDefinitionNamed: 'library-composed-form'.
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') unregisterDefinitionNamed: 'library'.
	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') removeFromCache.

	self getOrbeonWebServerConfiguration setOrbeonFormReaderTo2019_1.