setUp
tearDown
	| orbeon |

	self keepTempObjectsInSystem ifTrue: [^self].

	orbeon := testRoot getExistingApplicationOrCreateNewNamed: 'orbeon'.
	application unregisterDefinitionNamed: 'library'.
	application unregisterDefinitionNamed: 'library-composed-form'.
	orbeon unregisterDefinitionNamed: 'library'.
	testRoot unregisterApplication: application ifAbsent: [self assert: false].
	testRoot unregisterApplication: orbeon ifAbsent: [self assert: false].

	super tearDown.