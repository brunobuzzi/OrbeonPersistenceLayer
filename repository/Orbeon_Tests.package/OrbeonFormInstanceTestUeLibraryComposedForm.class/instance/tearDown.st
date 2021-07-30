setUp
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'library'.
	application unregisterDefinitionNamed: 'library-composed-form'.
	testRoot unregisterApplication: application ifAbsent: [self assert: false].
	(testRoot getExistingApplicationOrCreateNewNamed: 'orbeon') unregisterDefinitionNamed: 'library'.
	testRoot unregisterApplication: (testRoot getExistingApplicationOrCreateNewNamed: 'orbeon') ifAbsent: [self assert: false].

	super tearDown.