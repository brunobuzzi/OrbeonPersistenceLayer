other
renderRestartOrbeonTomcatOn: html

	html div id: 'manager-option';
		with: [html div id: 'restart-tomcat'; 
						with: [html label with: 'Restart Orbeon Tomcat'.
								html break.
								html anchor callback: [self restartTomcat];
												with: [html image url: (SEWAFFileLibrary / #runiconPng).]].
	]