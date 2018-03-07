other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: OrbeonXmlPathUpTo2017_1 new].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_ue_library;
		title: 'Library';
		processXMLDefinitionFor: OrbeonXmlPathUpTo2017_1 new.