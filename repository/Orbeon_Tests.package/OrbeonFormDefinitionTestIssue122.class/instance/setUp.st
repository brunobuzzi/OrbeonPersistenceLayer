other
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	form := OrbeonPublishedFormDefinition newNamed: 'issue122' inAppNamed: 'ue'.
	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_issue122_v1;
		id: self defaultFormId;
		title: 'Issue 122';
		processXMLDefinitionFor: self getOrbeonXmlXpathFrom2017_2.