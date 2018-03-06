other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: OrbeonXmlPath2016_1 new].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_ue_library;
		title: 'Library';
		processXMLDefinitionFor: OrbeonXmlPath2016_1 new.