other
setMetadataWith: anOrbeonFormReader

	formName := anOrbeonFormReader getFormName.

	application := self systemRoot getExistingApplicationOrCreateNewNamed: anOrbeonFormReader getApplicationName.

	self setTitleAndDescriptionWith: anOrbeonFormReader.