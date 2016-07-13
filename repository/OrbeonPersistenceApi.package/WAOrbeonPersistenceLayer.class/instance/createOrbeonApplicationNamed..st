create published definition
createOrbeonApplicationNamed: appName

	^self getOrbeonApplicationClass new
		applicationName: appName;
		addToCache;
		yourself