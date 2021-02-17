other
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'test-all-types-2'.

	super tearDown.

	self getOrbeonWebServerConfiguration setOrbeonFormReaderTo2019_1.