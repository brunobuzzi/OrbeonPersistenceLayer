other
createFormStructureFor: formName in: appName definitionTemplate: methodName title: title xPathVersion: anOrbeonXmlPath
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	| savedDefinition app |

	app := self getOrbeonApplicationClass applicationNamed: appName.
	savedDefinition := OrbeonSavedFormDefinition app: app applicationName form: formName.
	savedDefinition id: UUID new asString;
		version: 1;
		title: title;
		setXmlString: (anOrbeonXmlPath templateClass perform: methodName).

	app addSavedDefinition: savedDefinition.
	savedDefinition definition 
		publish; 
		processXMLDefinitionFor: anOrbeonXmlPath.

	app addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition