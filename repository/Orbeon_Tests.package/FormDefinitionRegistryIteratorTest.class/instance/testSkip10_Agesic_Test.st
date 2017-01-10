other
testSkip10_Agesic_Test
	| application forms formsInRange latestDefinition |

	"application := self getOrbeonApplicationClass applicationNamed: 'agesic' ifNone: [self assert: false].

	iterator := FormDefinitionRegistryIterator on: (application registryForFormNamed: 'test' ifNone: [nil]).
	latestDefinition := iterator definitionRegistry getLastVersion.

	formsInRange := OrderedCollection new.
	forms := OrderedCollection new.
	iterator position: 10.

	1 to: 10 do: [:counter |  | form |
		form := iterator nextObject.
		forms add: form.
		(form notNil and: [form canBeDisplayedFor: 'admin' role: 'admin' latestDefinition: latestDefinition]) ifTrue: [formsInRange add: form].
	]."

	self assert: true.