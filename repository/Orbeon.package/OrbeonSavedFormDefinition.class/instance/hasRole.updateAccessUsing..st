permissions
hasRole: aRoleName updateAccessUsing: anOrbeonPermissions

	anOrbeonPermissions isEnabled ifFalse: [^true]. "if permissions are NOT enabled then it has ALL permissions"

	(groupname = aRoleName) ifFalse: [^anOrbeonPermissions hasUpdateAccess: aRoleName].

	^anOrbeonPermissions hasUpdateAccess: 'group-member'