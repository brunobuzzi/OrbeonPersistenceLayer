permissions
hasRoleNamed: rolename createPermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	(formInstanceOrSavedForm isGroupNameEqualTo: rolename) ifFalse: [^self hasCreatePermission: rolename].

	^self hasCreatePermission: 'group-member'