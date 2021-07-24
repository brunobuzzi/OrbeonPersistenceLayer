applications
getExistingOrbeonApplicationOrCreateNewNamed: applicationName 
	| application |

	(applications includesKey: applicationName) ifTrue: [^applications at: applicationName].

	application := OrbeonApplication newNamed: applicationName on: self.

	self registerApplication: application.

	^application