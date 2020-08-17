other
setUp
	| xPathManager |

	super setUp.

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2019_1.

	xPathManager := self getOrbeonXmlXpathFrom2017_2.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'migration'.
	application unregisterDefinitionNamed: 'all-fields-types'.
	form := application definitionNamed: 'all-fields-types' ifNone: [self createFormStructureFor: 'all-fields-types' in: 'migration' definitionTemplate: #formDefinition_all_fields_types title: 'Test' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_all_fields_types;
		title: 'Test'.

	form processXMLDefinitionFor: xPathManager