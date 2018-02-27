other
setUp
	| application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'test'.
	form := application definitionNamed: 'test' ifNone: [self createFormStructureFor: 'test' in: 'test' definitionTemplate: #formDefinition_Test_2017_2 title: 'Test'].

	form xmlString: OrbeonFormDefinitionTemplate formDefinition_Test_2017_2;
		title: 'Test'.
self halt.
	form processXMLDefinition