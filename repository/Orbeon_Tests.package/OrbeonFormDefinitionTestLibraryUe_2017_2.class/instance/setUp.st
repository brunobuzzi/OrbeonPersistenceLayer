other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: OrbeonXmlPath2017_2 new].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_ue_library;
		title: 'Library';
		processXMLDefinitionFor: OrbeonXmlPath2017_2 new.