other
tearDown
	| application |

	super tearDown.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	application unregisterDefinitionNamed: 'test-all-types-4'.

	testRoot unregisterApplication: application ifAbsent: [self assert: false]