other
testDoIt
	| definition application |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure.].
	apiOperation id: definition id.

	testRoot getDefinitionWithId: definition id ifNone: [self assert: false].

	apiOperation doIt.

	self assert: (testRoot getDefinitionWithId: definition id ifNone: [self assert: false]) isDeleted.