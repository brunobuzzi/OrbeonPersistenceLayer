form instances
removeInstance: anOrbeonFormInstance

	self registry removeForm: anOrbeonFormInstance ifAbsent: []. "<instancesSet> used to search with indexes"

	"<instances> used to direct access via <id>"
	^instances removeKey: anOrbeonFormInstance id ifAbsent: [anOrbeonFormInstance]