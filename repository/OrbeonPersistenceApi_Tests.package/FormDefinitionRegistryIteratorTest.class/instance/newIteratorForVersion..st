other
newIteratorForVersion: versionNumber

	^FDRegistryIteratorWithoutPermissons on: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false]) forVersion: versionNumber