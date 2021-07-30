other
tearDown

	super tearDown.

	self application unregisterDefinitionNamed: 'iterator'.

	testRoot unregisterApplication: self application ifAbsent: [self assert: false]