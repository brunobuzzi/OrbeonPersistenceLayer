published definition
getDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer <anOrbeonPublishedFormDefinition> with id <stringId> if none evaluate the block <aBlock>"

	^currentVersions detect: [:eachDef | eachDef id = stringId] ifNone: aBlock