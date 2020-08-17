other
setUp

"	form := OrbeonPublishedFormDefinition app: 'agesic' form: 'test'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_imageAnnotation;
		title: 'Test';
		processXMLDefinitionFor: self getOrbeonXmlXpathFrom2017_2."

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := OrbeonSavedFormDefinition createDefinition: 'test' with: #form_imageAnnotation in: application title: 'Test' xPathVersion: self getOrbeonXmlXpathFrom2017_2