other
createFormDefinition
	| application xPathManager form |

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2019_1.

	xPathManager := OrbeonXmlPath2017_2 new.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'migration'.
	application unregisterDefinitionNamed: 'all-fields-types'.
	form := application definitionNamed: 'all-fields-types' ifNone: [self createFormStructureFor: 'all-fields-types' in: 'migration' definitionTemplate: #formDefinition_all_fields_types title: 'Test' xPathVersion: xPathManager].

	form xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_all_fields_types;
		title: 'Test'.

	form processXMLDefinitionFor: xPathManager.

	^form