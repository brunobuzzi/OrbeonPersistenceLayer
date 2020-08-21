other
tearDown
	| application |

	super tearDown.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	
	application unregisterDefinitionNamed: 'test-2'.

	application removeFromCache.