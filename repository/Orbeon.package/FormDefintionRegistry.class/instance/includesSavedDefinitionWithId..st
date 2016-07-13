saved definitions
includesSavedDefinitionWithId: stringId
	"Answer wheter or not the receiver includes a save definition with id <stringId>"
	| savedCollection |

	savedCollection := savedDefinitions at: stringId ifAbsent: [^false].

	^savedCollection notEmpty