other
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := OrbeonPublishedFormDefinition newNamed: 'energy-recursive' inAppNamed: 'agesic'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_energy_recursive_form;
		id: self defaultFormId;
		title: 'Energy Recursive Form';
		processXMLDefinitionFor: self getOrbeonXmlXpathFrom2017_2.