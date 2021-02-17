other
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'energy-recursive'.

	super tearDown.

	self getOrbeonWebServerConfiguration setOrbeonFormReaderTo2019_1.