published definition
getAnyDraftWithId: stringId ifNone: aBlock
	"The receiver answer anOrbeonFormInstance with id <stringId> if none evaluates the block <aBlock>"

	(currentVersions, oldVersions) do: [:each | (each getDraftWithId: stringId) ifNotNil: [:value | ^value]].

	^aBlock value