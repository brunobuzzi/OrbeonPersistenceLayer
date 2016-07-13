other
hasRole: aRoleName readAccessUsing: anOrbeonPermissions

	anOrbeonPermissions isEnabled ifFalse: [^true]. "if permissions are NOT enabled then it has ALL permissions"

	(groupname = aRoleName) ifFalse: [^anOrbeonPermissions hasReadAccess: aRoleName].

	^anOrbeonPermissions hasReadAccess: 'group-member'