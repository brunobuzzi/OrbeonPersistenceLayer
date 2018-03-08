other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'energy-recursive'.
	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_energy_recursive_form;
		id: self defaultFormId;
		title: 'Energy Recursive Form';
		processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1.