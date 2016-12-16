service-put-op
createOrbeonApplicationNamed: appName

	^self getOrbeonApplicationClass new
		applicationName: appName;
		addToCache;
		yourself