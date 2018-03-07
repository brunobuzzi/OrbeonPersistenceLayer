other
setUp
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: OrbeonXmlPath2017_2 new].

	(self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: OrbeonXmlPath2017_2 new].

	form := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructureFor: 'library-composed-form' in: 'ue' definitionTemplate: #form_library_composed_form title: 'Test Section Library Composed Forms' xPathVersion: OrbeonXmlPath2017_2 new].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_library_composed_form;
		title: 'Test Section Library Composed Forms';
		processXMLDefinitionFor: OrbeonXmlPath2017_2 new.