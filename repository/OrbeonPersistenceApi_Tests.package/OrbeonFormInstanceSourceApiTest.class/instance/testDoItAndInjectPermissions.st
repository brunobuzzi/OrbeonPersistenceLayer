other
testDoItAndInjectPermissions

	apiOperation doItAndInjectPermissions: [:permissionsString | 
		self assert: ((permissionsString indexOfSubCollection: 'read') ~= 0).
		self assert: ((permissionsString indexOfSubCollection: 'delete') ~= 0).
		self assert: ((permissionsString indexOfSubCollection: 'update') ~= 0).
		self assert: ((permissionsString indexOfSubCollection: 'create') ~= 0).
	].