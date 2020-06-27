other
setMetadataWith: anOrbeonFormReader

	formName := anOrbeonFormReader getFormName.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: anOrbeonFormReader getApplicationName.

	self setTitleAndDescriptionWith: anOrbeonFormReader.