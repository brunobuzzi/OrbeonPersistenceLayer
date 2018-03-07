other
setUp
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'test'.
	form := application definitionNamed: 'test' ifNone: [self createFormStructureFor: 'test' in: 'test' definitionTemplate: #formDefinition_Test_2017_2 title: 'Test' xPathVersion: OrbeonXmlPathUpTo2017_1 new].

	form xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 formDefinition_Test_2017_1;
		title: 'Test'.

	form processXMLDefinitionFor: OrbeonXmlPathUpTo2017_1 new