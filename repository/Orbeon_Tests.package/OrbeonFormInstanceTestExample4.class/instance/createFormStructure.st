other
createFormStructure
	| savedDefinition app |

	app := OrbeonApplication applicationNamed: 'agesic'.
	savedDefinition := OrbeonSavedFormDefinition app: app applicationName form: 'energy-recursive'.
	savedDefinition id: UUID new asString;
		version: 1;
		setXmlString: OrbeonFormDefinitionTemplate form_energy_recursive_form.

	app addSavedDefinition: savedDefinition.
	savedDefinition definition 
		publish; 
		processXMLDefinition.

	app addPublishedDefinition: savedDefinition definition.

	^savedDefinition definition