other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'energy-recursive'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_energy_recursive_form;
		id: self defaultFormId;
		title: 'Energy Recursive Form';
		processXMLDefinitionFor: OrbeonXmlPath2017_2 new.