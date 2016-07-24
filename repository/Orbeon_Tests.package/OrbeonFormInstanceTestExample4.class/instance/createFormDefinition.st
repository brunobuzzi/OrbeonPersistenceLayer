other
createFormDefinition

	^(OrbeonPublishedFormDefinition app: 'agesic' form: 'energy-recursive')
			xmlString: OrbeonFormDefinitionTemplate form_energy_recursive_form;
			id: UUID new asString;
			processXMLDefinition;
			yourself