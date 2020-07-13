permissions
hasUserNamed: username readPermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	^(formInstanceOrSavedForm isUserNameEqualTo: username) and: [self hasReadPermission: 'owner']