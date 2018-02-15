other
setMetadata
	| reader |

	reader := self newFormReader.

	formName := reader getFormName.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: reader getApplicationName.

	self title: reader getTitle.
	self description: reader getDescription.