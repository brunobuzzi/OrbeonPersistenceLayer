other
createFormStructureFor: formName version: version id: stringId in: appName definitionTemplate: methodName title: title xPathVersion: anOrbeonXmlPath
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	| anOrbeonApplication |

	anOrbeonApplication := self getOrbeonApplicationClass applicationNamed: appName.

	^OrbeonSavedFormDefinition createDefinition: formName version: version id: stringId with: methodName in: anOrbeonApplication title: title xPathVersion: anOrbeonXmlPath