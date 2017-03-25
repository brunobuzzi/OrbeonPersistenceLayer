other
setUp
	| definition application |

	application := OrbeonApplication applicationNamed: 'ue' ifNone: [self assert: false].
	definition := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructure.].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_library_composed_form;
					yourself.

	form processXML.