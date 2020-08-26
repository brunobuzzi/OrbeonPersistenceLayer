other
createFormStructureFor: formName in: appName definitionTemplate: methodName title: title xPathVersion: anOrbeonXmlPath
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	
	^self createFormStructureFor: formName version: 1 in: appName definitionTemplate: methodName title: title xPathVersion: anOrbeonXmlPath