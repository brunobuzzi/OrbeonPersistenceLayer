other
testSkip0_Sales_Customer
	| application |

	application := self getOrbeonApplicationClass applicationNamed: 'sales-application' ifNone: [self assert: false].

	iterator := FormDefinitionRegistryIterator on: (application registryForFormNamed: 'customer' ifNone: [nil]).

	iterator skip: 0.

	self assert: false.