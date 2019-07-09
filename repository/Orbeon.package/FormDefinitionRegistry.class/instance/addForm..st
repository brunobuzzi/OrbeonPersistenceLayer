other
addForm: anOrbeonFormInstance

	(instancesVersionSet at: anOrbeonFormInstance version ifAbsentPut: [RcIdentityBag new]) add: anOrbeonFormInstance.

	^instancesSet add: anOrbeonFormInstance