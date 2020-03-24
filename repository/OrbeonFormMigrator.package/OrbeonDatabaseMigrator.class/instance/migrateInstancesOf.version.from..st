db migration api
migrateInstancesOf: anOrbeonPublishedFormDefinition version: version from: stringTimeStamp
	"The receiver migrate <OrbeonFormInstance>s of form <anOrbeonPublishedFormDefinition> version <version> from time stamp <stringTimeStamp>"

	self importFormInstancesOf: anOrbeonPublishedFormDefinition version: version from: stringTimeStamp.
	self migrateInstanceAttachmentsOf: anOrbeonPublishedFormDefinition from: stringTimeStamp.