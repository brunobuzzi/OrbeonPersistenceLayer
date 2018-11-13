other
setUp
	| definition application xPathManager |

	self getOrbeonApplicationClass cache removeKey: 'ue'.
	xPathManager := self getOrbeonXmlXpathUpto2017_1.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.
	application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: xPathManager].
	(OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon') definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: xPathManager].

	definition := application definitionNamed: 'library-composed-form2' ifNone: [self createFormStructure.].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_library_composed_form2;
					yourself.

	form processXML.