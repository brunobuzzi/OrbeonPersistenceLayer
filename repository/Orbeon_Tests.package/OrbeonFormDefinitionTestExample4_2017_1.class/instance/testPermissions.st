other
testPermissions

	self assert: (form permissions class == OrbeonPermissions).

	self assert: (form hasCreatePermission: 'orbeon-role').
	self assert: (form hasReadPermission: 'orbeon-role').
	self assert: (form hasDeletePermission: 'orbeon-role').

	self assert: (form hasCreatePermission: 'x-role').
	self assert: (form hasReadPermission: 'x-role') not.
	self assert: (form hasUpdatePermission: 'x-role') not.
	self assert: (form hasDeletePermission: 'x-role') not.

	self assert: (form hasCreatePermission: 'owner').
	self assert: (form hasReadPermission: 'owner').
	self assert: (form hasUpdatePermission: 'owner').
	self assert: (form hasDeletePermission: 'owner').

	self assert: (form hasCreatePermission: 'group-member').
	self assert: (form hasReadPermission: 'group-member').
	self assert: (form hasUpdatePermission: 'group-member').