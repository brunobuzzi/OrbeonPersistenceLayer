upgrade definition
upgradeDefinition
	"The receiver upgrade its definition <anOrbeonPublishedFormDefinition> to the latest of the same version"
	| newDefinition |
	
	newDefinition := self getApplication definitionNamed: self formName version: version ifNone: [^definition].
	definition removeInstance: self.
	definition := newDefinition.

	self processXML "update fields based on the new definition"