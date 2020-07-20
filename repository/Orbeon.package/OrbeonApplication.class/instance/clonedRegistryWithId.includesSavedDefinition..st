registry cloned definitions
clonedRegistryWithId: stringId includesSavedDefinition: anOrbeonSavedFormDefinition
	"Answer whether or not the cloned registry with id <stringId> includes the saved form  <anOrbeonSavedFormDefinition>"

	^(self clonedRegistryWithId: stringId ifNone: [^false]) includesSavedDefinition: anOrbeonSavedFormDefinition