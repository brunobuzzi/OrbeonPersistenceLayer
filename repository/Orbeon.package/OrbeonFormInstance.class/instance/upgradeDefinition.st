upgrade definition
upgradeDefinition
	"The receiver upgrade its definition <anOrbeonPublishedFormDefinition> to the latest of the same version.
	In order to properly execute this method see comments of issue #243."
	| newDefinition oldDefiniton |
	
	newDefinition := self getApplication definitionNamed: self formName version: version ifNone: [^definition].
	definition removeInstance: self.
	oldDefiniton := definition.
	definition := newDefinition.

	self processXML. "update fields based on the new definition"

	self removeShadowFieldsValuesIn: oldDefiniton.