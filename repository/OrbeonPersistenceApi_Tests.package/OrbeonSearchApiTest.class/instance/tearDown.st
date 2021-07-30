other
tearDown
	| application |

	super tearDown.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	application unregisterDefinitionNamed: 'test-all-types-4';
					unregisterDefinitionNamed: 'manual-form';
					unregisterDefinitionNamed: 'library'.

	testRoot unregisterApplication: application ifAbsent: [self assert: false].


	application := testRoot getExistingApplicationOrCreateNewNamed: 'st'.

	application unregisterDefinitionNamed: 'simple-registration'.

	testRoot unregisterApplication: application ifAbsent: [self assert: false].