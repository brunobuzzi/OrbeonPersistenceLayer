saved definitions
includesSavedDefinitionWithId: stringId
	"Answer wheter or not the receiver includes a save definition with id <stringId>"

	^savedDefinitions anySatisfy: [:each | each id = stringId]