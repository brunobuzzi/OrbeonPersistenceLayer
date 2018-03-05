other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library'].

	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library'].

	form := application definitionNamed: 'library-composed-form2' ifNone: [self createFormStructureFor: 'library-composed-form2' in: 'ue' definitionTemplate: #form_library_composed_form2 title: 'Test Section Library Composed Forms'].

	form xmlString: OrbeonFormDefinitionTemplate form_library_composed_form2;
		title: 'Test Section Library Composed Forms';
		processXMLDefinitionFor: OrbeonXmlPath2016_1 new.