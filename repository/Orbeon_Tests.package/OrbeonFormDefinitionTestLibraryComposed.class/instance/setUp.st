other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library'].

	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library'].

	form := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructure].

	form xmlString: OrbeonFormDefinitionTemplate form_library_composed_form;
		id: self defaultFormId;
		title: 'Test Section Library Composed Forms';
		processXMLDefinition