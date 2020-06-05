other
newWith: aFormDefinitionRegistry version: version user: user group: group credentials: credentials pageSize: pageSize pageNumber: pageNumber xmlQuery: xmlDocument

	^(self newFor: user group: group credentials: credentials pageSize: pageSize pageNumber: pageNumber xmlQuery: xmlDocument)
			setRegistry: aFormDefinitionRegistry;
			setVersion: version;
			yourself