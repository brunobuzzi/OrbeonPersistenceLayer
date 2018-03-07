other
createFormStructure
	| savedDefinition app |

	app := OrbeonApplication applicationNamed: 'agesic'.
	savedDefinition := OrbeonSavedFormDefinition app: app applicationName form: 'test'.
	savedDefinition id: UUID new asString;
		version: 1;
		title: 'Test';
		setXmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_test.

	app addSavedDefinition: savedDefinition.
	savedDefinition definition 
		publish; 
		processXMLDefinitionFor: OrbeonXmlPathUpTo2017_1 new.

	app addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition