other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: OrbeonXmlPath2017_2 new].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_orbeon_library;
		title: 'Library';
		processXMLDefinitionFor: OrbeonXmlPath2017_2 new.