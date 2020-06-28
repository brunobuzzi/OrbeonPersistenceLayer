other
testWritePermissionsError
	| path |

	path := self getOrbeonWebServerConfiguration getPublishedDefinitionsPathFor: formName in: app.

	System performOnServer: 'chmod -R 000 ', path.

	self should: [apiOperation doIt] raise: OrbeonOSException.

	System performOnServer: 'chmod -R 777 ', path.