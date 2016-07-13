published definition
getDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer <anOrbeonFormInstanceDefinition> with id <stringId> if none evaluate the block <aBlock>"

	^currentVersions detect: [:eachDef | eachDef id = stringId] ifNone: aBlock