other
testDeleteAllOSFilesAtCurrentOrbeon

	self deleteAllOSFilesAt: self getOrbeonWebServerConfiguration printBaseAttachmentPath.

	self testCreateEmptyAttachmentStructureAtCurrentOrbeon.