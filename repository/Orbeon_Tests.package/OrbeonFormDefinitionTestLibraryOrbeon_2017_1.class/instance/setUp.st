other
setUp
	| application xPathManager |

	xPathManager := self getOrbeonXmlXpathUpto2017_1.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'orbeon'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'orbeon' definitionTemplate: #form_orbeon_library title: 'Library' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_orbeon_library;
		title: 'Library';
		processXMLDefinitionFor: xPathManager.