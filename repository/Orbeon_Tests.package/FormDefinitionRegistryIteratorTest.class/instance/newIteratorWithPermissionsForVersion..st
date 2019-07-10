other
newIteratorWithPermissionsForVersion: versionNumber

	^FDRegistryIteratorWithPermissons on: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false]) forVersion: versionNumber