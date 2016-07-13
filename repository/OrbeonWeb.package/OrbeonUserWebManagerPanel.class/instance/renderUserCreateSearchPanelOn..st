other
renderUserCreateSearchPanelOn: html

	html div id: 'form-user-panel';
		with: [html form with: [
					html fieldSet with: [
						html legend with: 'Users'.
						html label with: 'User Name'.
						html textInput callback: [:value | username := value].
						html label with: 'Password'.
						html textInput callback: [:value | password := value].
						html submitButton callback: [self addUser]; with: 'Create User'.
						html break.
						html submitButton callback: [self searchUser]; with: 'Search User'.].
	]	].