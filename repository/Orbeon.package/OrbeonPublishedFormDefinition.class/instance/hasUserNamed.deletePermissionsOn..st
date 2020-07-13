permissions
hasUserNamed: username deletePermissionsOn: formInstanceOrSavedForm

	permissions isEnabled ifFalse: [^true].

	^(formInstanceOrSavedForm isUserNameEqualTo: username) and: [self hasDeletePermission: 'owner']