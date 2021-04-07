other
buildFormStructureFrom: xmlString name: formName version: version id: stringId in: appName title: title 
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	| anOrbeonApplication |

	anOrbeonApplication := self getOrbeonApplicationClass applicationNamed: appName.

	^OrbeonSavedFormDefinition buildDefinitionFrom: xmlString name: formName version: version id: stringId in: anOrbeonApplication title: title