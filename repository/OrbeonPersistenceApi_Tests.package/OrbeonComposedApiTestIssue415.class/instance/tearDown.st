setUp
tearDown

	(self apiNamed: 'library') application unregisterDefinitionNamed: 'library'.
	(self apiNamed: 'library') application unregisterDefinitionNamed: 'registration'.

	testRoot unregisterApplication: (self apiNamed: 'library') application ifAbsent: [self assert: false].

	super tearDown.