registry access
instancesSetOf: formName version: versionNumber

	^(self registryForFormNamed: formName ifNone: [^#()]) instancesSetOfVersion: versionNumber