registry operations
registryFor: anOrbeonFormDefinition
	"Answer the registry <FormDefinitionRegistry> for the form definition <anOrbeonFormDefinition> if none raise an Exception"

	^self registryForFormNamed: anOrbeonFormDefinition formName
			ifNone: [FormRegistryNotExistException signal: 'No registry available for :', anOrbeonFormDefinition formName]