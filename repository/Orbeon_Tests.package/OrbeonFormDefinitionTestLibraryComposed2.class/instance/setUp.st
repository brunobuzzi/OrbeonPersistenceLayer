other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: OrbeonXmlPath2016_1 new].

	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: OrbeonXmlPath2016_1 new].

	form := application definitionNamed: 'library-composed-form2' ifNone: [self createFormStructureFor: 'library-composed-form2' in: 'ue' definitionTemplate: #form_library_composed_form2 title: 'Test Section Library Composed Forms' xPathVersion: OrbeonXmlPath2016_1 new].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_library_composed_form2;
		title: 'Test Section Library Composed Forms';
		processXMLDefinitionFor: OrbeonXmlPath2016_1 new.