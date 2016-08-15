other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test-section-interation-name'.
	form xmlString: OrbeonFormDefinitionTemplate formDefinition_custom_iteration;
		id: self defaultFormId;
		title: 'Test Section Interation Name';
		processXMLDefinition.