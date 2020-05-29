other
testCreateEmptyAttachmentStructure

	System performOnServer: 'rm -R /tmp/orbeon-files/'.
	System performOnServer: 'cd tmp; mkdir /tmp/orbeon-files/'.
	OrbeonMaintenanceScript createEmptyAttachmentStructureAt: '/tmp/orbeon-files/'.

	self assert: (GsFile existsOnServer: '/tmp/orbeon-files/').
	self assert: (GsFile existsOnServer: '/tmp/orbeon-files/definitions/published/').
	self assert: (GsFile existsOnServer: '/tmp/orbeon-files/definitions/saved/').
	self assert: (GsFile existsOnServer: '/tmp/orbeon-files/drafts/').
	self assert: (GsFile existsOnServer: '/tmp/orbeon-files/instances/').
	self assert: (GsFile existsOnServer: '/tmp/orbeon-files/temp/').