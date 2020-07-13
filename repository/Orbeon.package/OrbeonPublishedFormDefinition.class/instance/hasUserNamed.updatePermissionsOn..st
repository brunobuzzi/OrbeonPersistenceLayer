permissions
hasUserNamed: username updatePermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	^(formInstanceOrSavedForm isUserNameEqualTo: username) and: [self hasUpdatePermission: 'owner']