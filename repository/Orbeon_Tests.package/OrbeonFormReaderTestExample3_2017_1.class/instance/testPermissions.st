definition tests
testPermissions
	| permissions |

	permissions := reader getPermissions.

	self assert: (permissions class == OrbeonPermissions).

	self assert: (permissions hasCreateAccess: 'orbeon-agesic-uaip-admin').
	self assert: (permissions hasReadAccess: 'orbeon-agesic-uaip-admin').
	self assert: (permissions hasUpdateAccess: 'orbeon-agesic-uaip-admin').
	self assert: (permissions hasDeleteAccess: 'orbeon-agesic-uaip-admin').

	self assert: (permissions hasCreateAccess: 'x-role').
	self assert: (permissions hasReadAccess: 'x-role') not.
	self assert: (permissions hasUpdateAccess: 'x-role') not.
	self assert: (permissions hasDeleteAccess: 'x-role') not.