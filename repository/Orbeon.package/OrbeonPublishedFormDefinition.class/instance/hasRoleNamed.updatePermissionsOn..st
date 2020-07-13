permissions
hasRoleNamed: rolename updatePermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	(formInstanceOrSavedForm isGroupNameEqualTo: rolename) ifFalse: [^self hasUpdatePermission: rolename].

	^self hasUpdatePermission: 'group-member'