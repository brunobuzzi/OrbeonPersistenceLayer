other
removeInstanceDefinition: anOrbeonFormInstanceDefinition
	"The receiver remove the form definition <anOrbeonFormInstanceDefinition> from the registry"

	(self hasRegistryFor: anOrbeonFormInstanceDefinition) ifFalse: [^anOrbeonFormInstanceDefinition].

	^(self registryFor: anOrbeonFormInstanceDefinition) removeInstanceDefinition: anOrbeonFormInstanceDefinition