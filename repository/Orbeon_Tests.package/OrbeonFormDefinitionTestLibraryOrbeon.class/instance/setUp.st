other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library'].

	form xmlString: OrbeonFormDefinitionTemplate form_orbeon_library;
		title: 'Library';
		processXMLDefinitionFor: OrbeonXmlPath2016_1 new.