other
anyDefinitionIncludesDraft: anOrbeonFormInstance
	"Answer whether or not any <OrbeonPublishedFormDefinition> of the reveceiver includes the deleted draft <anOrbeonFormInstance>"

	self getAnyDeletedDraftWithId: anOrbeonFormInstance id ifNone: [^false].

	^true