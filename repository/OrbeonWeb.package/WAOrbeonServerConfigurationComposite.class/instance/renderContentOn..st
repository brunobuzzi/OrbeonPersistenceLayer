render
renderContentOn: html

	self session user isAdmin 
	ifTrue: [self renderServerConfigurationFormOn: html]