registry operations
createRegistryFor: anOrbeonFormDefinition
	"The receiver creates a definition registry for <anOrbeonFormDefinition>"

	^self setRegistryFormNamed: anOrbeonFormDefinition formName with: (FormDefinitionRegistry newFor: self id: anOrbeonFormDefinition id)