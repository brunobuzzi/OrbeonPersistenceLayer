registry operations
setRegistryFormNamed: formName with: aFormDefinitionRegistry
	"The receiver set/put at <formName> the registry <aFormDefinitionRegistry>"

	^definitionRegistry 
		at: formName 
		put: aFormDefinitionRegistry