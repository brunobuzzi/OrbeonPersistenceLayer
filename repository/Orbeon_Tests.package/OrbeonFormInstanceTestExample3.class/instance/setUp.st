other
setUp
	| definition |

	self getOrbeonWebServerConfiguration setOrbeonFormReaderTo2017_2.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'test-3' ifNone: [self createFormDefinition].

	form := (OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: OrbeonFormInstanceTemplate form_test_3;
					processXMLSections;
					yourself.