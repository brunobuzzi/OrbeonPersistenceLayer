other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'library'.

	testRoot unregisterApplication: apiOperation application ifAbsent: [self assert: false]