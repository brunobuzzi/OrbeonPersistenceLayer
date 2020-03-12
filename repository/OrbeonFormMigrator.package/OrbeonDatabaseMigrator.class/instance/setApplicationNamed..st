other
setApplicationNamed: appName

	application := self getOrbeonApplicationClass 
							applicationNamed: appName 
							ifNone: [self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: appName].