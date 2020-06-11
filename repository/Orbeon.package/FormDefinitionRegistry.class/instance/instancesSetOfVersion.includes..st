Accessing
instancesSetOfVersion: versionNumber includes: anOrbeonFormInstance

	^(instancesVersionSet includesKey: versionNumber) and: [(instancesVersionSet at: versionNumber) includes: anOrbeonFormInstance]