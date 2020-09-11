other
tearDown
	| application |

	super tearDown.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'migration'.
	application unregisterDefinitionNamed: 'all-fields-types'.
	application removeFromCache.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'test'.
	application unregisterDefinitionNamed: 'test'.
	application removeFromCache.