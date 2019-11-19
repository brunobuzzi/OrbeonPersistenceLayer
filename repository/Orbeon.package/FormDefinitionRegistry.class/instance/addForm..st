other
addForm: anOrbeonFormInstance

	(instancesVersionSet at: anOrbeonFormInstance version ifAbsentPut: [RcIdentitySet new]) add: anOrbeonFormInstance.

	^instancesSet add: anOrbeonFormInstance