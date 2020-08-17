other
setUp
	| xPathManager |

	super setUp.

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2017_2.

	xPathManager := self getOrbeonXmlXpathFrom2017_2.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	application unregisterDefinitionNamed: 'test-all-types-4-1'.
	form := application definitionNamed: 'test-all-types-4-1' ifNone: [self createFormStructureFor: 'test-all-types-4-1' in: 'agesic' definitionTemplate: #formDefinition_example41 title: 'Test' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_example41;
		title: 'Test'.

	form processXMLDefinitionFor: xPathManager