registry cloned definitions
getLastSavedDefinitionFromClonedRegistryWithId: stringId
	
	^(self clonedRegistryWithId: stringId ifNone: [^false]) getLastSavedDefinition