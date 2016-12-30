permissions
hasUser: aUserName readAccessUsing: anOrbeonPermissions

	anOrbeonPermissions isEnabled ifFalse: [^true]. "if permissions are NOT enabled then it has ALL permissions"

	^(aUserName = username) and: [anOrbeonPermissions hasReadAccess: 'owner']