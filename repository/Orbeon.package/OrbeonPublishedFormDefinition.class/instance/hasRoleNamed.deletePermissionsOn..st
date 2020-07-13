permissions
hasRoleNamed: rolename deletePermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	(formInstanceOrSavedForm isGroupNameEqualTo: rolename) ifFalse: [^self hasDeletePermission: rolename].

	^self hasDeletePermission: 'group-member'