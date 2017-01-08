form instances
addInstance: anOrbeonFormInstance
	"The receiver add the form instance <anOrbeonFormInstance> to it's collections"

	anOrbeonFormInstance definition: self.

	self registry addForm: anOrbeonFormInstance. "<instancesSet> used to search with indexes"

	"<instances> used to direct access via <id>"
	^instances at: anOrbeonFormInstance id put: anOrbeonFormInstance