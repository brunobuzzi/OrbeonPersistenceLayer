applications
getExistingOrbeonApplicationOrCreateNewNamed: applicationName 
	| application |

	(applications includesKey: applicationName) ifTrue: [^applications at: applicationName].

	application := OrbeonApplication newNamed: applicationName.

	self registerApplication: application