other
setMetadata
	| reader |

	reader := self newFormReader.
	app := reader getApplicationName.
	form := reader getFormName.
	self setProperty: 'title' with: reader getTitle.
	self setProperty: 'description' with: reader getDescription.