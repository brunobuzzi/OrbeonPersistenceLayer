metadata
getApplicationName

	appName ifNil: [appName := formReader getApplicationName].

	^appName