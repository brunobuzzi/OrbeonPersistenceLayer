other
setUp
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: self getOrbeonXmlXpathFrom2017_2].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_ue_library;
		title: 'Library';
		processXMLDefinitionFor: self getOrbeonXmlXpathFrom2017_2.