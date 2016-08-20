other
createFormStructure
	| savedDefinition app |

	app := OrbeonApplication applicationNamed: 'agesic'.
	savedDefinition := OrbeonSavedFormDefinition app: app applicationName form: 'test'.
	savedDefinition id: UUID new asString;
		version: 1;
		title: 'Test';
		setXmlString: OrbeonFormDefinitionTemplate form_test.

	app addSavedDefinition: savedDefinition.
	savedDefinition definition 
		publish; 
		processXMLDefinition.

	app addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition