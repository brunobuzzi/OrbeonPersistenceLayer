other
testDoIt
	| defaultPath temPath |

	temPath := self getOrbeonWebServerConfiguration getTempPath.
	defaultPath := self getOrbeonWebServerConfiguration getSavedDefinitionsPathFor: formName in: app.

	apiOperation doIt.

	self assert: ((GsFile existsOnServer: defaultPath, formId, '-',fileId,'.bin') or: [GsFile existsOnServer: temPath, '/', formId, '-',fileId,'.bin']).

	System performOnServer: 'rm ', (defaultPath, formId, '-',fileId,'.bin').
	System performOnServer: 'rm ', (temPath, '/', formId, '-',fileId,'.bin').