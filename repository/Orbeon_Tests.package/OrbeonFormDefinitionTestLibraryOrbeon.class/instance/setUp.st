other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructure].

	form xmlString: OrbeonFormDefinitionTemplate form_orbeon_library;
		id: self defaultFormId;
		title: 'Library';
		processXMLDefinition