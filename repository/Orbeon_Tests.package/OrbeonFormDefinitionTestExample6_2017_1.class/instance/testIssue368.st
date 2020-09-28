other
testIssue368

	self deny: form hasPermissionsEnabled.

	self assert: (form getPermissionsForRole: 'admin') equals: '*'.
	self assert: (form getPermissionsForRole: 'none') equals: '*'.