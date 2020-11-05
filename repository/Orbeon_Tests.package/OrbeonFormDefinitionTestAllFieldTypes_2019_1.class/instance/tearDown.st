other
tearDown

	self keepTempObjectsInSystem ifFalse: [application unregisterDefinitionNamed: 'all-fields-types'].

	super tearDown.