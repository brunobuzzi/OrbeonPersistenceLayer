other
anyDefinitionIncludes: anOrbeonFormInstance
	"Answer whether or not any <OrbeonPublishedFormDefinition> of the reveceiver includes the form <anOrbeonFormInstance>"

	self getAnyInstanceWithId: anOrbeonFormInstance id ifNone: [^false].

	^true