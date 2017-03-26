other
setUp
	| application |

	application := OrbeonApplication applicationNamed: 'orbeon' ifNone: [self assert: false].
	form := application definitionNamed: 'library' ifNone: [self createFormStructure].

	form xmlString: OrbeonFormDefinitionTemplate form_orbeon_library;
		id: self defaultFormId;
		title: 'Library';
		processXMLDefinition