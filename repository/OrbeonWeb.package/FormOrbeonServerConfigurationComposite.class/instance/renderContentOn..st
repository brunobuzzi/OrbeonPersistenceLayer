other
renderContentOn: html

	html div id: 'server-configuration'; class: 'centered-unique-form'; with: [
		self session user isAdmin 
		ifTrue: [self renderServerConfigurationFormOn: html]
		ifFalse: [self renderServerConfigurationViewOn: html].
	]