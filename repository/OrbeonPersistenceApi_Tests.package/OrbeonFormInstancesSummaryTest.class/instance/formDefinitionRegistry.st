test
formDefinitionRegistry

	^self application registryForFormNamed: 'iterator' ifNone: [self assert: false]