other
setUp

	super setUp.

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2020_1.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	application definitionNamed: 'library' ifNone: [self createLibraryDefinition].
	form := application definitionNamed: 'issue122' ifNone: [self createFormDefinition].