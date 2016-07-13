saved forms
addSavedDefinition: anOrbeonFormInstanceDefinition
	"Add a new saved definition <anOrbeonFormInstanceDefinition> to receiver's registry"

	(self hasRegistryFor: anOrbeonFormInstanceDefinition) "check if the registry already exist, if not it creates it"
	ifFalse: [self createRegistryFor: anOrbeonFormInstanceDefinition].

	"add the definition to the registry"
	^(self registryFor: anOrbeonFormInstanceDefinition) addSavedDefinition: anOrbeonFormInstanceDefinition