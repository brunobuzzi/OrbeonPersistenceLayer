other
tearDown
	| application |

	super tearDown.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	application unregisterDefinitionNamed: 'test-all-types-4';
					unregisterDefinitionNamed: 'manual-form';
					unregisterDefinitionNamed: 'library'.

	application removeFromCache.


	application := testRoot getExistingApplicationOrCreateNewNamed: 'st'.

	application unregisterDefinitionNamed: 'simple-registration'.

	application removeFromCache.