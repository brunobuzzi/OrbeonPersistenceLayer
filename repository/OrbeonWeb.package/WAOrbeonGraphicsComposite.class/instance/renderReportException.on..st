render
renderReportException: anException on: html

	html div class: 'query-block-error'; 
		with: [html text: anException description.
				html break; break.
				html text: ('Error: a non number field has been selected' translateIn: self session).
	].