setUp
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'test-2'.

	super tearDown.