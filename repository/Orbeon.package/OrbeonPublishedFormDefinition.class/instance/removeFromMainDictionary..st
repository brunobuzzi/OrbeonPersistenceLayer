form instances
removeFromMainDictionary: anOrbeonFormInstance
	"The receiver -move- the form instance <anOrbeonFormInstance> from <instances> dictionary to <deletedInstances> dictionary"
	
	self removeInstance: anOrbeonFormInstance.

	^deletedInstances at: anOrbeonFormInstance id put: anOrbeonFormInstance