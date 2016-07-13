other
add: permissionName to: role

	^(permissions at: role ifAbsentPut: [OrderedCollection new]) add: permissionName