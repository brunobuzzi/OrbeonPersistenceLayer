other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library'].

	form xmlString: OrbeonFormDefinitionTemplate form_ue_library;
		title: 'Library';
		processXMLDefinitionFor: OrbeonXmlPath2016_1 new.