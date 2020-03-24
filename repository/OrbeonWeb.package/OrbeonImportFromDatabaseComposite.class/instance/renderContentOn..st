other
renderContentOn: html

	html div class: 'display-inline-flex'; with: [
		html div with: [self renderMigrateAllOn: html].
		html div with: [self renderMigrateApplicationAndFormOn: html].
		html div with: [self renderMigrateApplicationAndFormVersionFromDateOn: html].
		html div with: [self renderMigrateInstancesOfFormVersionFromDateOn: html].
	].