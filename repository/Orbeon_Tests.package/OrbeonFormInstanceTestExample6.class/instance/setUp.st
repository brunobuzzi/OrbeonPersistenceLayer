other
setUp
	| definition application |


	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: OrbeonXmlPath2016_1 new].
	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: OrbeonXmlPath2016_1 new].

	definition := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructure.].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_library_composed_form;
					yourself.

	form processXML.