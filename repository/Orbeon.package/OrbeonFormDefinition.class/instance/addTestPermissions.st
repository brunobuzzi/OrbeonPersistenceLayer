permissions
addTestPermissions
	| adminUser superUser user |

	adminUser :=  'orbeon-', app, '-admin'.
	superUser := 'orbeon-', app, '-super'.
	user :=  'orbeon-', app, '-user'.

	permissions := Dictionary new.
	self addPermission: 'create' to: 'all'.
	self addPermission: 'read' to: superUser.
	self addPermission: 'read' to: adminUser.
	self addPermission: 'read' to: user.
	self addPermission: 'update' to: adminUser.
	self addPermission: 'update' to: superUser.
	self addPermission: 'delete' to: adminUser.
	self addPermission: 'export' to: adminUser.
	self addPermission: 'sync' to: adminUser.