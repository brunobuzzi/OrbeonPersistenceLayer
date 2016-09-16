other
testCreate1000
	| definition application |

	application := OrbeonApplication applicationNamed: 'agesic' ifNone: [self assert: false].
	definition := application definitionNamed: 'test' ifNone: [self createFormDefinition].

	self create2: 1000 formsBasedOn: definition in: application randomMethod: #form_test_random_2.

	self assert: true