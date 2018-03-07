other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test-section-interation-name'.
	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_custom_iteration;
		id: self defaultFormId;
		title: 'Test Section Interation Name';
		processXMLDefinitionFor: OrbeonXmlPathUpTo2017_1 new.