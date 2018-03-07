definition tests
testPermissions
	| permissions |

	permissions := reader getPermissions.

	self assert: (permissions class == OrbeonPermissions).

	self assert: (permissions hasCreateAccess: 'owner').
	self assert: (permissions hasReadAccess: 'owner').
	self assert: (permissions hasUpdateAccess: 'owner').
	self assert: (permissions hasDeleteAccess: 'owner').

	self assert: (permissions hasCreateAccess: 'group-member').
	self assert: (permissions hasReadAccess: 'group-member').
	self assert: (permissions hasUpdateAccess: 'group-member').

	self assert: (permissions hasCreateAccess: 'orbeon-role').
	self assert: (permissions hasReadAccess: 'orbeon-role').
	self assert: (permissions hasDeleteAccess: 'orbeon-role').

	self assert: (permissions hasCreateAccess: 'x-role').
	self assert: (permissions hasReadAccess: 'x-role') not.
	self assert: (permissions hasUpdateAccess: 'x-role') not.
	self assert: (permissions hasDeleteAccess: 'x-role') not.