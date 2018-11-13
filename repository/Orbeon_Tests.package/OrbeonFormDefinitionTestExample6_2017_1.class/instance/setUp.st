other
setUp

	form := OrbeonPublishedFormDefinition newNamed: 'test-section-interation-name' inAppNamed: 'agesic'.
	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_custom_iteration;
		id: self defaultFormId;
		title: 'Test Section Interation Name';
		processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1.