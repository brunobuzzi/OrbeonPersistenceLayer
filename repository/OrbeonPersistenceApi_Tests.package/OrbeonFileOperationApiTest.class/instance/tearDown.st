other
tearDown
	| application |

	super tearDown.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'migration'.
	application unregisterDefinitionNamed: 'all-fields-types'.
	testRoot unregisterApplication: application ifAbsent: [self assert: false].

	application := testRoot getExistingApplicationOrCreateNewNamed: 'test'.
	application unregisterDefinitionNamed: 'test'.
	testRoot unregisterApplication: application ifAbsent: [self assert: false].