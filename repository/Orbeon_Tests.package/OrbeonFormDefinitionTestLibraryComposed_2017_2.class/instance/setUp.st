other
setUp
	| application xPathManager |

	xPathManager := self getOrbeonXmlXpathFrom2017_2.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: xPathManager].

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: xPathManager].

	form := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructureFor: 'library-composed-form' in: 'ue' definitionTemplate: #form_library_composed_form title: 'Test Section Library Composed Forms' xPathVersion: xPathManager].

	form "xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_library_composed_form;"
		title: 'Test Section Library Composed Forms';
		processXMLDefinitionFor: xPathManager.