other
testSkip10_Sales_Customer
	| forms application |

	application := self getOrbeonApplicationClass applicationNamed: 'sales-application' ifNone: [self assert: false].

	iterator := FormDefinitionRegistryIterator on: (application registryForFormNamed: 'customer' ifNone: [nil]).

	forms := OrderedCollection new.
	iterator position: 10.

	1 to: 10 do: [:counter | 
		forms add: iterator nextObject.
	].

	self assert: true.