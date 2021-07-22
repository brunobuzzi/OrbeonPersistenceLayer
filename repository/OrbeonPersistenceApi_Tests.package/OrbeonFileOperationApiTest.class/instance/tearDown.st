other
tearDown
	| application |

	super tearDown.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'migration'.
	application unregisterDefinitionNamed: 'all-fields-types'.
	application removeFromCache.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'test'.
	application unregisterDefinitionNamed: 'test'.
	application removeFromCache.