other
hasUser: aUserName createAccessUsing: anOrbeonPermissions

	anOrbeonPermissions isEnabled ifFalse: [^true]. "if permissions are NOT enabled then it has ALL permissions"

	^(aUserName = username) and: [anOrbeonPermissions hasCreateAccess: 'owner']