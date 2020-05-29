other
testDeleteAllOSFiles

	System performOnServer: 'touch /tmp/orbeon-files/definitions/published/text.text'.
	System performOnServer: 'touch /tmp/orbeon-files/definitions/saved/text.text'.
	System performOnServer: 'touch /tmp/orbeon-files/drafts/text.text'.
	System performOnServer: 'touch /tmp/orbeon-files/instances/text.text'.
	System performOnServer: 'touch /tmp/orbeon-files/temp/text.text'.

	OrbeonMaintenanceScript deleteAllOSFilesAt: '/tmp/orbeon-files/'.

	self deny: (GsFile existsOnServer: '/tmp/orbeon-files/text.text').
	self deny: (GsFile existsOnServer: '/tmp/orbeon-files/definitions/published/text.text').
	self deny: (GsFile existsOnServer: '/tmp/orbeon-files/definitions/saved/text.text').
	self deny: (GsFile existsOnServer: '/tmp/orbeon-files/drafts/text.text').
	self deny: (GsFile existsOnServer: '/tmp/orbeon-files/instances/text.text').
	self deny: (GsFile existsOnServer: '/tmp/orbeon-files/temp/text.text').

	System performOnServer: 'rm -Rf /tmp/orbeon-files/'.