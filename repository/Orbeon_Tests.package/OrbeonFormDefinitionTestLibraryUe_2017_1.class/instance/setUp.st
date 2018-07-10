other
setUp
	| application xPathManager |

	xPathManager := self getOrbeonXmlXpathUpto2017_1.
	application := OrbeonApplication getExistingApplicationOrCreateNewNamed: 'ue'.
	form := application definitionNamed: 'library' ifNone: [self createFormStructureFor: 'library' in: 'ue' definitionTemplate: #form_ue_library title: 'Library' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_ue_library;
		title: 'Library';
		processXMLDefinitionFor: xPathManager.