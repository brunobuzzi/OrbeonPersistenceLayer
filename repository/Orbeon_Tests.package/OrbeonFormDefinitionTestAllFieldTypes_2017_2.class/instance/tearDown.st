other
tearDown

	self keepTempObjectsInSystem ifFalse: [application unregisterDefinitionNamed: 'test-all-types-4-1'].
	
	super tearDown.