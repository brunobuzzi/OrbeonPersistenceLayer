other
tearDown
	| application |

	super tearDown.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	application unregisterDefinitionNamed: 'test-all-types-4'.

	application removeFromCache.