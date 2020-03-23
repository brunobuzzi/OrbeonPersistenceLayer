other
renderContentOn: html

	html div class: 'centered-unique-form'; with: [
		self renderMigrateAllOn: html.
		self renderMigrateApplicationAndFormOn: html.
		self renderMigrateApplicationAndFormVersionFromDateOn: html.
	].