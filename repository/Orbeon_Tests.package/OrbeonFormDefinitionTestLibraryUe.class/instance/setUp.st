other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructure].

	form xmlString: OrbeonFormDefinitionTemplate form_ue_library;
		id: self defaultFormId;
		title: 'Library';
		processXMLDefinition