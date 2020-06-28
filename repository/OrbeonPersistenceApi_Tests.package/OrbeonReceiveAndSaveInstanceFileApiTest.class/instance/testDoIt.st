other
testDoIt
	| path |

	path := self getOrbeonWebServerConfiguration getInstancesPathFor: formName in: app.

	apiOperation doIt.

	self assert: (GsFile existsOnServer: path, formId, '-',fileId).

	System performOnServer: 'rm ', (path, formId, '-',fileId)