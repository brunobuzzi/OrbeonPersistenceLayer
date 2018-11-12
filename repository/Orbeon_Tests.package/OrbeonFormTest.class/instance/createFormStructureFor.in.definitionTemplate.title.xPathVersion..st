other
createFormStructureFor: formName in: appName definitionTemplate: methodName title: title xPathVersion: anOrbeonXmlPath
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	| anOrbeonApplication |

	anOrbeonApplication := self getOrbeonApplicationClass applicationNamed: appName.

	^PEFFormCreator createDefinition: formName with: methodName in: anOrbeonApplication title: title xPathVersion: anOrbeonXmlPath