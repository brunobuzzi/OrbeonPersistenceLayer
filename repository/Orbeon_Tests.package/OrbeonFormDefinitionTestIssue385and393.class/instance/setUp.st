other
setUp

	super setUp.

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2019_1.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'gs'.

	application definitionNamed: 'library' ifNone: [self createLibraryDefinition].
	form := application definitionNamed: 'issue-385' ifNone: [self createFormDefinition].