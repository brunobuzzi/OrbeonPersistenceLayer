other
setUp
	| application |

	application := OrbeonApplication applicationNamed: 'ue' ifNone: [self assert: false].
	form := application definitionNamed: 'library-composed-form' ifNone: [self createFormStructure].

	form xmlString: OrbeonFormDefinitionTemplate form_library_composed_form;
		id: self defaultFormId;
		title: 'Test Section Library Composed Forms';
		processXMLDefinition