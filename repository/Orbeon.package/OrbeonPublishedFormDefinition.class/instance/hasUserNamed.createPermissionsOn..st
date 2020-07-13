permissions
hasUserNamed: username createPermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	^(formInstanceOrSavedForm isUserNameEqualTo: username) and: [self hasCreatePermission: 'owner']