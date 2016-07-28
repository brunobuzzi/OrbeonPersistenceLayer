published definition
getAnyInstanceWithId: stringId ifNone: aBlock
	"The receiver answer anOrbeonFormInstance with id <stringId> if none evaluates the block <aBlock>"

	(currentVersions, oldVersions) do: [:each | (each getInstanceWithId: stringId) ifNotNil: [:value | ^value]].

	^aBlock value