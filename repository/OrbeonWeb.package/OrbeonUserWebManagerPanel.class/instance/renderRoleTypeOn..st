other
renderRoleTypeOn: html

	html form id: 'form-rol-type'; with: [
		html fieldSet with: [
			html legend with: 'Role Type'.
			html label for: 'tipoDeRol'; with: 'Current Role'.
			html select callback: [:value | selectedRoleType := value];
							list: OrbeonManagerRole allManagerRolNames; 
							id: 'tipoDeRol';
							title: 'Role Type';
							selected: selectedUser managerRolName.
			html submitButton callback: [self updateRoleTypeWith: selectedRoleType];
				with: 'Modify'.
		]
	]