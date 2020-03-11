other
setApplicationNamed: appName

	application := self getOrbeonApplicationClass 
							applicationNamed: appName 
							ifNone: [self getOrbeonApplicationClass new applicationName: appName; addToCache; yourself].