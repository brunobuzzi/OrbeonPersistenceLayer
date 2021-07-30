other
tearDown

	super tearDown.

	apiOperation application unregisterDefinitionNamed: 'simple-registration'.
	apiOperation application unregisterDefinitionNamed: 'simple-registration-2'.

	testRoot unregisterApplication: apiOperation application ifAbsent: [self assert: false]