other
removeForm: anOrbeonFormInstance ifAbsent: aBlock

	(instancesVersionSet at: anOrbeonFormInstance version ifAbsent: [aBlock value]) remove: anOrbeonFormInstance ifAbsent: aBlock.

	^instancesSet remove: anOrbeonFormInstance ifAbsent: aBlock