other
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: self getOrbeonXmlXpathFrom2017_2].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_orbeon_library;
		title: 'Library';
		processXMLDefinitionFor: self getOrbeonXmlXpathFrom2017_2.