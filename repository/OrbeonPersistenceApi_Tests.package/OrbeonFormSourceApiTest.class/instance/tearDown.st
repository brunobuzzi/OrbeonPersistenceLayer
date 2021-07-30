other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'test-all-types-4'.

	testRoot unregisterApplication: apiOperation application ifAbsent: [self assert: false]