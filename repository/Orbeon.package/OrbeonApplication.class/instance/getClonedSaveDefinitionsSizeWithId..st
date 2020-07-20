registry cloned definitions
getClonedSaveDefinitionsSizeWithId: stringId

	^(self clonedRegistryWithId: stringId ifNone: [^0]) savedDefinitionsSize