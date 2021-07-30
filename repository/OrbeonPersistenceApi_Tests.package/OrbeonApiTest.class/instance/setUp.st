other
setUp

	super setUp.

	testRoot := OrbeonSystemRoot new.

"	(OrbeonMaintenanceScript attachmentStructureExistAt: self getOrbeonWebServerConfiguration printBaseAttachmentPath)
	ifFalse: [OrbeonMaintenanceScript createEmptyAttachmentStructureAt: self getOrbeonWebServerConfiguration printBaseAttachmentPath].
"