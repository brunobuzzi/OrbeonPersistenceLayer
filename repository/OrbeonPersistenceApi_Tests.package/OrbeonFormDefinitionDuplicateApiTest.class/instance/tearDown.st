other
tearDown
	| application |

	super tearDown.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	
	application unregisterDefinitionNamed: 'test-2'.

	testRoot unregisterApplication: apiOperation application ifAbsent: [self assert: false]