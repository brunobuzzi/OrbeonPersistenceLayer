saved definitions
getSavedDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer <anOrbeonFormInstanceDefinition> with id <stringId> if none evaluate the block <aBlock>"

	^savedDefinitions isEmpty
		ifFalse: [savedDefinitions last] "the last element of the saved collection"
		ifTrue: aBlock