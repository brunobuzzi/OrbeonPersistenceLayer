other
testDoIt
	| definition application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure.].
	apiOperation id: definition id.

	self getOrbeonApplicationClass getDefinitionWithId: definition id ifNone: [self assert: false].

	apiOperation doIt.

	self assert: (self getOrbeonApplicationClass getDefinitionWithId: definition id ifNone: [self assert: false]) isDeleted.