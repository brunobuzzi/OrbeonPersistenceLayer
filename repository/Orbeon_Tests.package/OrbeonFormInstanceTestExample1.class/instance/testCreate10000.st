other
testCreate10000
	| definition application |

	application := OrbeonApplication applicationNamed: 'agesic' ifNone: [self assert: false].
	definition := application definitionNamed: 'test' ifNone: [self createFormDefinition].

	self create2: 10000 formsBasedOn: definition in: application randomMethod: #form_test_random.

	self assert: true