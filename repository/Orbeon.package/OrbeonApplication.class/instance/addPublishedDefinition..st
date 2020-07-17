published forms
addPublishedDefinition: anOrbeonFormDefinition
	"Add a new form definition <anOrbeonFormDefinition> to receiver's registry"

	(self hasRegistryFor: anOrbeonFormDefinition) "check if the registry already exist, if not it creates it"
	ifFalse: [self createRegistryFor: anOrbeonFormDefinition].

	"add the definition to the registry"
	^(self registryFor: anOrbeonFormDefinition) addCurrentVersion: anOrbeonFormDefinition