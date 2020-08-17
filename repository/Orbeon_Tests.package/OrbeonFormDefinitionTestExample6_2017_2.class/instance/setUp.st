other
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := OrbeonPublishedFormDefinition newNamed: 'test-section-interation-name' inAppNamed: 'agesic'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_custom_iteration;
		id: self defaultFormId;
		title: 'Test Section Interation Name';
		processXMLDefinitionFor: self getOrbeonXmlXpathFrom2017_2.