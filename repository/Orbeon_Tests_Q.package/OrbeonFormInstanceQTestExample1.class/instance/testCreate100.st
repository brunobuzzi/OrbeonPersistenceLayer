other
testCreate100
	| definition application |

	application := OrbeonApplication applicationNamed: 'agesic' ifNone: [self assert: false].
	definition := application definitionNamed: 'test' ifNone: [self createFormDefinition].

	self create2: 100 formsBasedOn: definition in: application randomMethod: #form_test_random_2.

	self assert: true