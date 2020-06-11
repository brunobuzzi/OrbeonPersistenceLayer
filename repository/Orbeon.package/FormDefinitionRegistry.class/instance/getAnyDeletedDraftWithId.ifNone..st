published definition
getAnyDeletedDraftWithId: stringId ifNone: aBlock
	"The receiver answer a deleted <anOrbeonFormInstance> with id <stringId> if none evaluates the block <aBlock>"

	(currentVersions, oldVersions) do: [:each | (each getDeletedDraftWithId: stringId) ifNotNil: [:value | ^value]].

	^aBlock value