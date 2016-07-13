other
renderContentOn: html

	html div id: 'arena';
		with: [html heading level2 with: 'User List'.
			html render: self userList]