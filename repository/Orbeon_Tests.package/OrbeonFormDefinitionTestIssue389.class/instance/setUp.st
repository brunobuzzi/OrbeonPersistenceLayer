other
setUp

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'gs'.

	application definitionNamed: 'library' ifNone: [self createLibraryDefinition].
	form := application definitionNamed: 'test-library' ifNone: [self createFormDefinition].