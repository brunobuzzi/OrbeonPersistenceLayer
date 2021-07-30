other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'energy-recursive'.

	testRoot unregisterApplication: apiOperation application ifAbsent: [self assert: false]