saved forms
removeSavedDefinition: anOrbeonSavedFormDefinition
	"The receiver remove the form definition <anOrbeonSavedFormDefinition> from the registry"

	(self hasRegistryFor: anOrbeonSavedFormDefinition) ifFalse: [^anOrbeonSavedFormDefinition].

	^(self registryFor: anOrbeonSavedFormDefinition) removeSavedDefinition: anOrbeonSavedFormDefinition