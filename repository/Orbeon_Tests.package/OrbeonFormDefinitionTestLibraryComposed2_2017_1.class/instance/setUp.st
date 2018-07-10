other
setUp
	| application xPathManager |

	xPathManager := self getOrbeonXmlXpathUpto2017_1.
	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: xPathManager].

	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: xPathManager].

	form := application definitionNamed: 'library-composed-form2' ifNone: [self createFormStructureFor: 'library-composed-form2' in: 'ue' definitionTemplate: #form_library_composed_form2 title: 'Test Section Library Composed Forms' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_library_composed_form2;
		title: 'Test Section Library Composed Forms';
		processXMLDefinitionFor: xPathManager.