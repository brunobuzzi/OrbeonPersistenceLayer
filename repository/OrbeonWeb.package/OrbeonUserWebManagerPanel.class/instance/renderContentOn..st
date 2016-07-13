other
renderContentOn: html

	self renderUserCreateSearchPanelOn: html.
	html div id: 'user-rol-area';
		with: [html heading level2 with: 'User List'.
			html div id: 'user-list'; with: [
				html form with: [
					html render: self userList.
					html div id: 'buttons'; with: [
						html break.
						html submitButton callback: [self removeUser]; with: 'Remove User'.].
					]
				].
			html div id: 'rols-list'; with: [
				html render: rolsComponent.].
			html div id: 'rol-type-list'; with: [
				selectedUser ifNotNil: [self renderRoleTypeOn: html]]].