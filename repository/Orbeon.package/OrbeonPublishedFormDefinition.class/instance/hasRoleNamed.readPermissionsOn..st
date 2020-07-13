permissions
hasRoleNamed: rolename readPermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	(formInstanceOrSavedForm isGroupNameEqualTo: rolename) ifFalse: [^self hasReadPermission: rolename].

	^self hasReadPermission: 'group-member'