other
setUp
	| xPathManager |

	xPathManager := self getOrbeonXmlXpathFrom2017_2.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'test'.
	form := application definitionNamed: 'test' ifNone: [self createFormStructureFor: 'test' in: 'test' definitionTemplate: #formDefinition_Test_2017_2 title: 'Test' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_Test_2017_2;
		title: 'Test'.

	form processXMLDefinitionFor: xPathManager