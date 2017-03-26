other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructure].

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library'].

	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library'].

	form xmlString: OrbeonFormDefinitionTemplate form_library_composed_form;
		id: self defaultFormId;
		title: 'Test Section Library Composed Forms';
		processXMLDefinition