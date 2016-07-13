other
renderContentOn: html

	html div id: 'orbeon-applications';
		with: ["html render: self reportApplications."
				self renderComboOn: html.].
	
	html div id: 'orbeon-instances-def';
		with: [html render: instancesArea.].