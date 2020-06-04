other
setUp
	| application |

	super setUp.

"	application := self getOrbeonApplicationClass applicationNamed: 'sales-application' ifNone: [self assert: false].

	iterator := FormDefinitionRegistryIterator on: (application registryForFormNamed: 'customer' ifNone: [nil])."