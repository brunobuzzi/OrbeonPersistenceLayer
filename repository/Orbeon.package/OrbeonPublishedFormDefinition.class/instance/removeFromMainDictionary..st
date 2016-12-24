other
removeFromMainDictionary: anOrbeonFormInstance
	"The receiver -move- the form instance <anOrbeonFormInstance> from <instances> dictionary to <deletedInstances> dictionary"

	instances removeKey: anOrbeonFormInstance id ifAbsent: [^anOrbeonFormInstance].

	^self deletedInstances at: anOrbeonFormInstance id put: anOrbeonFormInstance