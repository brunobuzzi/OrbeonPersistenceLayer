other
anyDefinitionIncludesDeleted: anOrbeonFormInstance
	"Answer whether or not any <OrbeonPublishedFormDefinition> of the reveceiver includes the deleted form <anOrbeonFormInstance>"

	self getAnyDeletedInstanceWithId: anOrbeonFormInstance id ifNone: [^false].

	^true