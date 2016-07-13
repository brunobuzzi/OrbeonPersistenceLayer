other
hasRole: aRoleName createAccessUsing: anOrbeonPermissions

	anOrbeonPermissions isEnabled ifFalse: [^true]. "if permissions are NOT enabled then it has ALL permissions"

	(groupname = aRoleName) ifFalse: [^anOrbeonPermissions hasCreateAccess: aRoleName].

	^anOrbeonPermissions hasCreateAccess: 'group-member'