other
createFormStructure
	| savedDefinition app |

	app := OrbeonApplication applicationNamed: 'ue'.
	savedDefinition := OrbeonSavedFormDefinition app: app applicationName form: 'library-composed-form'.
	savedDefinition id: UUID new asString;
		version: 1;
		title: 'Test Library Sections';
		setXmlString: OrbeonFormDefinitionTemplate form_ue_library.

	app addSavedDefinition: savedDefinition.
	savedDefinition definition 
		publish; 
		processXMLDefinition.

	app addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition