other
createFormStructureFor: formName in: appName definitionTemplate: methodName title: title
	"The receiver create a new <OrbeonPublishedFormDefinition> named <formName> in Application named <appName>.
	The XML of the form is take it from <OrbeonFormDefinitionTemplate> using the class method <methodName>"
	| savedDefinition app |

	app := OrbeonApplication applicationNamed: appName.
	savedDefinition := OrbeonSavedFormDefinition app: app applicationName form: formName.
	savedDefinition id: UUID new asString;
		version: 1;
		title: title;
		setXmlString: (OrbeonFormDefinitionTemplate perform: methodName).

	app addSavedDefinition: savedDefinition.
	savedDefinition definition 
		publish; 
		processXMLDefinition.

	app addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition