registry cloned definitions
clonedRegistryWithId: stringId ifNone: aBlock
	"Answer the cloned registry <FormDefinitionRegistry> for with id <stringId> if none then evaluate <aBlock>"

	^clonedDefinitionsRegistry at: stringId ifAbsent: aBlock