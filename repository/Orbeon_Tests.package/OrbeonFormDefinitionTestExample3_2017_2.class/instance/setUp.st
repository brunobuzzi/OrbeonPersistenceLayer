other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_imageAnnotation;
		title: 'Test';
		processXMLDefinitionFor: OrbeonXmlPath2017_2 new.