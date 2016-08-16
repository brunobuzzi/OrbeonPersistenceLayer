other
createFormStructure
	| savedDefinition app |

	app := OrbeonApplication applicationNamed: 'agesic'.
	savedDefinition := OrbeonSavedFormDefinition app: app applicationName form: 'test-section-interation-name'.
	savedDefinition id: UUID new asString;
		version: 1;
		title: 'Test Section Interation Name';
		setXmlString: OrbeonFormDefinitionTemplate formDefinition_custom_iteration.

	app addSavedDefinition: savedDefinition.
	savedDefinition definition 
		publish; 
		processXMLDefinition.

	app addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition