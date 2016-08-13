other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: OrbeonFormDefinitionTemplate form_energy_recursive_form;
		id: self defaultFormId;
		title: 'Energy Recursive Form';
		processXMLDefinition.