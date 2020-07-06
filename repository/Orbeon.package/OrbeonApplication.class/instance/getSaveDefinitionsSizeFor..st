saved forms
getSaveDefinitionsSizeFor: formName

	^(self registryForFormNamed: formName ifNone: [^0]) savedDefinitionsSize