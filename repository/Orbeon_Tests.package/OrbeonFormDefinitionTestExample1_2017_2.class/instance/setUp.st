other
setUp
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'test'.
	form := application definitionNamed: 'test' ifNone: [self createFormStructureFor: 'test' in: 'test' definitionTemplate: #formDefinition_Test_2017_2 title: 'Test' xPathVersion: OrbeonXmlPath2017_2 new].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_Test_2017_2;
		title: 'Test'.

	form processXMLDefinitionFor: OrbeonXmlPath2017_2 new