other
setUp
	| application |

	application := OrbeonApplication applicationNamed: 'ue' ifNone: [self assert: false].
	form := application definitionNamed: 'library' ifNone: [self createFormStructure].

	form xmlString: OrbeonFormDefinitionTemplate form_ue_library;
		id: self defaultFormId;
		title: 'Library';
		processXMLDefinition