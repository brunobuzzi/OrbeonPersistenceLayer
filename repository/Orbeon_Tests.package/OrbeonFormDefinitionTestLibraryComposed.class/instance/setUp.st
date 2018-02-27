other
setUp
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library'].

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library'].

	form := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructureFor: 'library-composed-form' in: 'ue' definitionTemplate: #form_library_composed_form title: 'Test Section Library Composed Forms'].

	form xmlString: OrbeonFormDefinitionTemplate form_library_composed_form;
		title: 'Test Section Library Composed Forms';
		processXMLDefinition