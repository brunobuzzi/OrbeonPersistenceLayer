other
setUp
	| application |

	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'orbeon'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: OrbeonXmlPath2016_1 new].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_orbeon_library;
		title: 'Library';
		processXMLDefinitionFor: OrbeonXmlPath2016_1 new.