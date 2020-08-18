published forms
removeDefinition: anOrbeonFormDefinition
	"The receiver remove the form definition <anOrbeonFormDefinition> from the registry"

	(self hasRegistryFor: anOrbeonFormDefinition) ifFalse: [^anOrbeonFormDefinition].

	^(self registryFor: anOrbeonFormDefinition) removeDefinition: anOrbeonFormDefinition