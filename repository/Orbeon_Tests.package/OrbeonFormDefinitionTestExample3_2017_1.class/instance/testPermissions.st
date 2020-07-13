other
testPermissions

	self assert: (form hasCreatePermission: 'orbeon-agesic-uaip-admin').
	self assert: (form hasReadPermission: 'orbeon-agesic-uaip-admin').
	self assert: (form hasUpdatePermission: 'orbeon-agesic-uaip-admin').
	self assert: (form hasDeletePermission: 'orbeon-agesic-uaip-admin').

	self assert: (form hasCreatePermission: 'x-role').
	self assert: (form hasReadPermission: 'x-role') not.
	self assert: (form hasUpdatePermission: 'x-role') not.
	self assert: (form hasDeletePermission: 'x-role') not.