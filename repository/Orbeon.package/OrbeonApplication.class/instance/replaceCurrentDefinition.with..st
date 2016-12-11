published forms
replaceCurrentDefinition: currentDefinition with: newDefinition

	^(self registryForFormNamed: currentDefinition formName ifNone: [^nil]) replaceCurrentDefinition: currentDefinition with: newDefinition