other
testSkip0_Agesic_Test
	| application |

	application := self getOrbeonApplicationClass applicationNamed: 'agesic' ifNone: [self assert: false].

	iterator := FormDefinitionRegistryIterator on: (application registryForFormNamed: 'test' ifNone: [nil]).

	iterator skip: 0.

	self assert: false.