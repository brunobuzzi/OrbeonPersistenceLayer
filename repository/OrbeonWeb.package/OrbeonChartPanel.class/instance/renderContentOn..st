other
renderContentOn: html

	"html div id: 'user-rol-area';
		with: [html heading level2 with: 'Lista de Usuarios'.
			html div id: 'user-list'; with: [
				html form with: [
					html render: self listOfUsuarios3.
					html div id: 'buttons'; with: [
						html submitButton callback: [self addUser]; with: 'Add User'.
						html break.
						html submitButton callback: [self removeUser]; with: 'Remove User'.].
					]
				].
			html div id: 'rols-list'; with: [
				html render: rolsComponent.].
			html div id: 'rol-type-list'; with: [
				selectedUser ifNotNil: [self renderRoleTypeOn: html]]]."
	html div id: 'close';
		with: [html anchor
				callback: [ self answer ];
				with: 'Volver al Administrador']