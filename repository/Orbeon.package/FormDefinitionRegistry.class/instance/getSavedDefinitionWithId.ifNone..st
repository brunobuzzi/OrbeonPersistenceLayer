saved definitions
getSavedDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer <anOrbeonFormInstanceDefinition> with id <stringId> if none evaluate the block <aBlock>"
	| savedCollection |

	savedCollection := savedDefinitions at: stringId ifAbsent: [^aBlock value].

	^savedCollection isEmpty
		ifFalse: [savedCollection last] "the last element of the saved collection"
		ifTrue: aBlock