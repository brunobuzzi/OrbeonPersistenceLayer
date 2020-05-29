other
createEmptyAttachmentStructureAt: basePath
	"basePath := /tmp/orbeon-files/"

	System performOnServer: 'rm -R ', basePath.
	System performOnServer: 'cd tmp; mkdir ', basePath.
	OrbeonMaintenanceScript createEmptyAttachmentStructureAt: basePath.

	self assert: (GsFile existsOnServer: basePath).
	self assert: (GsFile existsOnServer: basePath, 'definitions/published/').
	self assert: (GsFile existsOnServer: basePath, 'definitions/saved/').
	self assert: (GsFile existsOnServer: basePath, 'drafts/').
	self assert: (GsFile existsOnServer: basePath, 'instances/').
	self assert: (GsFile existsOnServer: basePath, 'temp/').