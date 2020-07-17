saved forms
addSavedDefinition: anOrbeonSavedFormDefinition
	"Add a new saved definition <anOrbeonSavedFormDefinition> to receiver's registry"
	| registry |

	(self hasRegistryFor: anOrbeonSavedFormDefinition) "check if the registry already exist, if not it creates it"
	ifFalse: [self createRegistryFor: anOrbeonSavedFormDefinition].

	registry := self registryFor: anOrbeonSavedFormDefinition.
 
	(registry isIdEqualTo: anOrbeonSavedFormDefinition id) ifFalse: [^self addToClonedRegistry: anOrbeonSavedFormDefinition].

	"add the definition to the registry"
	^registry addSavedDefinition: anOrbeonSavedFormDefinition