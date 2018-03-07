other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test-section-interation-name'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_custom_iteration;
		id: self defaultFormId;
		title: 'Test Section Interation Name';
		processXMLDefinitionFor: OrbeonXmlPath2017_2 new.