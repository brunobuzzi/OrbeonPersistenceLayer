other
renderManageSurveysOn: html

	html div id: 'manager-option';
		with: [html div id: 'survey-manager'; 
						with: [html label with: 'Manage Surveys'.
								html break.
								html anchor callback: [self showSurveyManager];
												with: [html image url: (SEWAFFileLibrary / #documentsiconPng).]].
		]