other
setUp

	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_imageAnnotation;
		title: 'Test';
		processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1.