other
tearDown
	| application |

	super tearDown.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	application unregisterDefinitionNamed: 'test-all-types-4';
					unregisterDefinitionNamed: 'manual-form';
					unregisterDefinitionNamed: 'library'.

	application removeFromCache.


	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st'.

	application unregisterDefinitionNamed: 'simple-registration'.

	application removeFromCache.