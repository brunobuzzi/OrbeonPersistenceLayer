other
setUp
	| application xPathManager |

	xPathManager := self getOrbeonXmlXpathUpto2017_1.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'test'.
	form := application definitionNamed: 'test' ifNone: [self createFormStructureFor: 'test' in: 'test' definitionTemplate: #formDefinition_Test_2017_2 title: 'Test' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_Test_2017_1;
		title: 'Test'.

	form processXMLDefinitionFor: xPathManager