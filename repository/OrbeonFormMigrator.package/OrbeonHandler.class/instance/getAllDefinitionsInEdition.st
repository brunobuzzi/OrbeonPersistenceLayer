other
getAllDefinitionsInEdition
	"Answer a collection of FormDefinitions that are in edition state"

	^OrbeonPublishedFormDefinition cache select: [:e | e isInEdition]