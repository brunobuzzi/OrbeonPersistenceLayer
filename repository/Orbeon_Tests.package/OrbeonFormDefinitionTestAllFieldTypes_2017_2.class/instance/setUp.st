other
setUp
	| application xPathManager |

	super setUp.

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2017_2.

	xPathManager := self getOrbeonXmlXpathFrom2017_2.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	application unregisterDefinitionNamed: 'test'.
	form := application definitionNamed: 'test' ifNone: [self createFormStructureFor: 'test' in: 'agesic' definitionTemplate: #form_example4 title: 'Test' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_example4;
		title: 'Test'.

	form processXMLDefinitionFor: xPathManager