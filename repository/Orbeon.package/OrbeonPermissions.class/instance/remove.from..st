other
remove: permissionName from: role

	^(permissions at: role ifAbsent: [^nil]) remove: permissionName ifAbsent: [nil]