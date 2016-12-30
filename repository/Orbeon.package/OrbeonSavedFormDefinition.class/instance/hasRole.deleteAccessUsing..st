permissions
hasRole: aRoleName deleteAccessUsing: anOrbeonPermissions

	anOrbeonPermissions isEnabled ifFalse: [^true]. "if permissions are NOT enabled then it has ALL permissions"

	(groupname = aRoleName) ifFalse: [^anOrbeonPermissions hasDeleteAccess: aRoleName].

	^anOrbeonPermissions hasDeleteAccess: 'group-member'